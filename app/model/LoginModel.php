<?php 

class LoginModel extends Controller {
    private $db;

    public function __construct() {
		$this->db = new Database;
    }
    
    public function userCheck($data, $type) {
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
}