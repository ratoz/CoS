<?php

class LoginModel extends Controller
{
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }

  public function userCheck($data, $type)
  {
    if ($type == 'admin') {

      $query = "SELECT id_admin, username, password FROM admintable 
        WHERE username = :username && password = :pass";

      $this->db->query($query);
      $this->db->bind('username', $data['username']);
      $this->db->bind('pass', $data['pass']);

      return $this->db->single();
    } else {

      $query = "SELECT data_pengguna.id_udata AS id, pengguna.password AS password, data_pengguna.email AS email
        FROM data_pengguna  
        JOIN pengguna ON 
        data_pengguna.id_udata = pengguna.id_udata 
        WHERE email = :email && password = :pass";

      $this->db->query($query);
      $this->db->bind('email', $data['email']);
      $this->db->bind('pass', $data['pass']);

      return $this->db->single();
    }
  }

  public function sendEmailFP($data)
  {
    if ($this->validEmail($data)) {
      $code = $this->codeGenerator();
      $query = "INSERT INTO forget_password(verify_code,email) VALUES (:code,:email)";

      $this->db->query($query);
      $this->db->bind("code", $code);
      $this->db->bind("email", $data['email_forget']);

      $this->db->execute();

      $this->ticket($data, $code);

      return true;
    } else {
      return false;
    }
  }

  public function codeGenerator()
  {
    do {
      $code = rand();
    } while (strlen($code) < 10);
    return $code;
  }

  public function validEmail($data)
  {
    $query = "SELECT email FROM data_pengguna
    WHERE email = :email";

    $this->db->query($query);
    $this->db->bind("email", $data['email_forget']);

    $this->db->execute();

    if ($this->db->rowCount() == 1) {
      return true;
    } else {
      return false;
    }
  }

  public function ticket($data, $code)
  {
    $id = $this->getidCount();
    $id++;

    $query = "INSERT INTO help_ticket 
    VALUES (:id, 'Forget Password', :email, 'Forget Password', 'Forget Password', :code, 'Unread');";

    $this->db->query($query);
    $this->db->bind("id", $id);
    $this->db->bind("email", $data['email_forget']);
    $this->db->bind("code", $code);

    $this->db->execute();
  }

  public function getidCount()
  {
    $query = "SELECT * FROM help_ticket";

    $this->db->query($query);
    $this->db->execute();

    return $this->db->rowCount();
  }
}
