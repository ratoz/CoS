<?php

class Admin extends Controller
{
	public function index()
	{
		$data['page'] = 'admin';
		$data['title'] = 'Admin Login';

		$this->view('templates/header', $data);
		$this->view('admin/index');
		$this->view('templates/footer', $data);
	}

	public function home()
	{
		$data['page'] = 'admin';
		$data['title'] = 'Dashboard';

		$data['user'] = $this->showData();

		$this->view('templates/header', $data);
		$this->view('admin/home', $data);
		$this->view('templates/footer', $data);
	}

	public function edit_user()
	{
		$data['page'] = 'admin';
		$data['title'] = 'Edit Pengguna';
		$data['user'] = $this->showData();

		$this->view('templates/header', $data);
		$this->view('admin/edit_user', $data);
		$this->view('templates/footer', $data);
	}

	public function help()
	{
		$data['page'] = 'admin';
		$data['title'] = 'Help';
		$data['ticket'] = $this->help_ticket();

		$this->view('templates/header', $data);
		$this->view('admin/help', $data);
		$this->view('templates/footer', $data);
	}

	public function showData()
	{
		$data['page'] = 'admin';
		$data['user'] = $this->model('AdminModel')->showDataUser();
		$data['nullData'] = "Data Kosong";

		if ($data > 0) {
			return $data['user'];
		} else {
			return $data['nullData'];
		}
	}

	public function search()
	{
		$data['page'] = 'admin';
		if (isset($_POST['keyword'])) {
			$data['user'] = $this->model('AdminModel')->searchModel($_POST);

			if ($data['user'] > 0) {
				$data['title'] = "edit user";
				$this->view('templates/header', $data);
				$this->view('admin/edit_user', $data);
				$this->view('templates/footer', $data);
			} else {
				Alert::setMsg("Data tidak", " ditemukan", "Danger");
				header("Location: " . BASEURL . "admin/edit_user");
			}
		}
	}

	public function editData()
	{
		$data['page'] = 'admin';
		if (empty($_POST['reason'])) {
			$_POST['reason'] = 'No Reason';
		}

		if ($_POST['selectType'] == "poin") {
			$type = 'poin';
			$this->model('AdminModel')->editUser($_POST, $type);

			echo $_POST['id'];

			Alert::setMsg('Poin telah', 'diubah', 'warning');
			header('Location: ' . BASEURL . 'admin/edit_user');
		} elseif ($_POST['selectType'] == "status") {
			$type = 'status';
			$this->model('AdminModel')->editUser($_POST, $type);

			Alert::setMsg('Status telah', 'diganti', 'warning');
			header('Location: ' . BASEURL . 'admin/edit_user');
		} else {
			Alert::setMsg('tidak ada data yang', 'diganti', 'warning');
		}
	}

	public function getDataUser()
	{
		echo json_encode($this->model('AdminModel')->showUserById($_POST['id']));
	}


	public function help_ticket()
	{
		$data['ticket'] = $this->model('AdminModel')->listTicket();
		$data['nullData'] = "Data Kosong";

		if ($data > 0) {
			return $data['ticket'];
		} else {
			return $data['nullData'];
		}
	}

	public function getDataTicket()
	{
		echo json_encode($this->model('HelpModel')->showTicketById($_POST['id']));
	}

	public function deleteUser()
	{
		$data['page'] = 'admin';
		$data = $this->model('AdminModel')->deleteUserById($_POST);

		if ($data) {
			Alert::setMsg("Behasil", "menghapus", "success");
			header("Location: " . BASEURL . "admin/edit_user");
		} else {
			Alert::setMsg("gagal", "menghapus", "danger");
			header("Location: " . BASEURL . "admin/edit_user");
		}
	}
}
