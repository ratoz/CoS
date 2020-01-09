<?php

class HelpModel extends Controller
{

    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function sendTicket($data)
    {
        $id = $this->getidCount();
        $id++;

        $query = "INSERT INTO help_ticket  
        VALUES (:id, :name, :email, :title, :category, :content, 'Unread')";

        $this->db->query($query);

        $this->db->bind("id", $id);
        $this->db->bind("name", $data['name_ticket']);
        $this->db->bind("email", $data['email_ticket']);
        $this->db->bind("title", $data['title_ticket']);
        $this->db->bind("category", $data['category_ticket']);
        $this->db->bind("content", $data['content_ticket']);

        $this->db->execute();

        return true;
    }

    public function getidCount()
    {
        $query = "SELECT * FROM help_ticket";

        $this->db->query($query);
        $this->db->execute();

        return $this->db->rowCount();
    }

    public function checkCode($data)
    {
        $query = "SELECT verify_code, email FROM forget_password WHERE verify_code = :code";

        $this->db->query($query);
        $this->db->bind("code", $data['code']);

        $this->db->execute();

        return $this->db->single();
    }

    public function newPassword($data)
    {
        $query = "UPDATE pengguna JOIN data_pengguna ON data_pengguna.id_udata = pengguna.id_udata 
         SET pengguna.password = :password 
         WHERE data_pengguna.email = :email";

        $this->db->query($query);
        $this->db->bind("email", $data['email']);
        $this->db->bind("password", $data['password']);
        $this->db->execute();

        $this->deleteRecord($data['email']);

        return true;
    }

    public function deleteRecord($email)
    {
        $query = "DELETE FROM forget_password WHERE forget_password.email = :email";

        $this->db->query($query);
        $this->db->bind("email", $email);

        $this->db->execute();
    }

    public function showTicketById($id)
    {
        $query = 'SELECT * FROM help_ticket WHERE id_ticket = :id';

        $this->db->query($query);
        $this->db->bind('id', $id);
        $this->db->execute();

        return $this->db->single();
    }

    public function modelSetRead($data)
    {
        $query = "UPDATE help_ticket 
        SET status = :status 
        WHERE id_ticket = :id";

        $this->db->query($query);
        $this->db->bind("status", $data['status']);
        $this->db->bind("id", $data['id']);

        $this->db->execute();

        return true;
    }

    public function changeValid($id){
        $query = "UPDATE berkas SET valid = 1 where id_berkas = :id";
        $this->db->query($query);
        $this->db->bind("id", $id);
        $this->db->execute();

    }
}
