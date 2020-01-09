<?php
class NilaiModel{

    private $db;

	public function __construct()
	{
		$this->db = new Database;
    }

    public function showAllDataMapel()
    {
        $query = "SELECT * from mapel";
		$this->db->query($query); // untuk menyimpan data yang akan di binding, untuk menghindari sql injection
		return $this->db->resultset();

    }


}
?>