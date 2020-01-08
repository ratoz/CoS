<?php

class Help extends Controller
{
	public function index()
	{
		$data['title'] = 'Bantuan';

		$this->view('templates/header', $data);
		$this->view('help/index');
		$this->view('templates/footer');
	}

	public function forget_password()
	{
		$data['title'] = 'Notice';

		$this->view('templates/header', $data);
		$this->view('help/forget_password');
		$this->view('templates/footer');
	}

	public function new_password()
	{
		$data['title'] = 'Notice';

		$this->view('templates/header', $data);
		$this->view('help/new_password');
		$this->view('templates/footer');
	}

	public function submitTicket()
	{
		$data = $this->model('HelpModel')->sendTicket($_POST);

		if ($data) {
			Alert::setMsg("ticket telah", "dikirim", "success");
			header("Location: " . BASEURL . "help");
		} else {
			Alert::setMsg("ticket gagal", "dikirim", "danger");
			header("Location: " . BASEURL . "help");
		}
	}

	public function verifyCode()
	{
		$data = $this->model('HelpModel')->checkCode($_POST);

		if ($data > 0) {
			$_SESSION['email'] = $data['email'];
			header("Location: " . BASEURL . "help/new_password");
		} else {
			Alert::setMsg("Verifikasi", "salah", "danger");
			header("Location: " . BASEURL . "help/forget_password");
		}
	}

	public function newPassword()
	{
		if ($_POST['password'] == $_POST['reTypePassword']) {
			$_POST['email'] = $_SESSION['email'];
			$data = $this->model('HelpModel')->newPassword($_POST);

			if ($data) {
				Alert::setMsg("Password telah", "diubah", "success");
				header('Location: ' . BASEURL . 'login');
			} else {
				Alert::setMsg("Error", "terjadi", "danger");
				header('Location: ' . BASEURL . 'help/new_Password');
			}
		} else {
			Alert::setMsg("Password ", "tidak sama", "danger");
			header('Location: ' . BASEURL . 'help/new_Password');
		}
	}

	public function setRead()
	{
		if (isset($_POST['id'])) {
			$_POST['status'] = "Read";

			$data = $this->model('HelpModel')->modelSetRead($_POST);

			if ($data) {
				header('Location: ' . BASEURL . 'admin/help');
			} else {
				Alert::setMsg("gagal", "set baca", "danger");
				header('Location: ' . BASEURL . 'admin/help');
			}
		}
	}
}
