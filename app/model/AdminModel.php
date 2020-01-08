<?php

class AdminModel extends Controller
{
	private $db;

	public function __construct()
	{
		$this->db = new Database;
	}

	public function showDataUser()
	{
		$query = 'SELECT * FROM data_pengguna
    JOIN pengguna ON data_pengguna.id_udata = pengguna.id_udata';

		$this->db->query($query);

		$this->db->execute();

		return $this->db->resultSet();
	}

	public function showUserById($id)
	{
		$query = 'SELECT * FROM data_pengguna
    JOIN pengguna ON data_pengguna.id_udata = pengguna.id_udata 
    WHERE data_pengguna.id_udata = :id AND pengguna.id_udata = :id';

		$this->db->query($query);
		$this->db->bind('id', $id);
		$this->db->execute();

		return $this->db->single();
	}

	public function searchModel($data)
	{
		$key = $data['keyword'];

		$query = "SELECT * FROM data_pengguna dp 
		JOIN pengguna p ON dp.id_udata = p.id_udata 
		WHERE p.id_udata LIKE :key
		OR p.username LIKE :key 
		OR dp.email LIKE :key 
		OR dp.phone LIKE :key";

		$this->db->query($query);
		$this->db->bind("key", "%$key%");
		$this->db->execute();

		return $this->db->resultSet();
	}

	public function editUser($data, $type)
	{
		if ($type == 'poin') {
			$query = "UPDATE pengguna, data_pengguna 
            SET data_pengguna.poin = '" . $data['valueText'] . "', pengguna.reason = '" . $data['reason'] . "'
            WHERE pengguna.id_udata = :id AND data_pengguna.id_udata = :id";

			$this->db->query($query);
			$this->db->bind('id', $data['id']);

			$this->db->execute();
		} else {
			$query = "UPDATE pengguna, data_pengguna 
            SET pengguna.status = '" . $data['valueSelect'] . "', pengguna.reason = '" . $data['reason'] . "'
            WHERE pengguna.id_udata = :id AND data_pengguna.id_udata = :id";

			$this->db->query($query);
			$this->db->bind('id', $data['id']);

			$this->db->execute();
		}
	}

	public function listTicket()
	{
		$query = "SELECT * FROM help_ticket ORDER BY status DESC";

		$this->db->query($query);
		$this->db->execute();

		return $this->db->resultSet();
	}

	public function deleteUserById($data)
	{
		$this->deleteTable1($data);
		$this->deleteTable2($data);

		$check = $this->showUserById($data["delIdUdata"]);

		if ($check == 0) {
			return true;
		} else {
			return false;
		}
	}

	public function deleteTable1($data)
	{
		$query = "DELETE FROM pengguna WHERE id_user = :id";

		$this->db->query($query);
		$this->db->bind("id", $data['delIdUser']);
		$this->db->execute();
	}

	public function deleteTable2($data)
	{
		$query = "DELETE FROM data_pengguna WHERE id_udata = :id";

		$this->db->query($query);
		$this->db->bind("id", $data['delIdUdata']);
		$this->db->execute();
	}
}
