<?php

class Login extends Controller {
    public function index() {
		$data['title'] = 'Login';
		$data['page']='login';
		if (!empty($_SESSION['rememberMe'])) {
			$data['email'] = $_SESSION['email'];
			$data['rememberMe'] = $_SESSION['rememberMe'];
		} else {
			$data['email'] = '';
			$data['rememberMe'] = '';
		}

		$this->view('templates/header',$data); //memanggil file header pada folder templates
		$this->view('login/index',$data); //memanggil file index pada folder dashboard
		$this->view('templates/footer'); //memanggil file footer pada folder templates
	}
	
	public function admin() {
		$data['title'] = 'Admin Login';
		
		$this->view('templates/header', $data); //memanggil file header pada folder templates
		$this->view('login/admin'); //memanggil file index pada folder dashboard
		$this->view('templates/footer'); //memanggil file footer pada folder templates
	}

	public function verify($type) {
		session_start();
		if ($type == 'user') {

			$data = $this->model('LoginModel')->userCheck($_POST, $type);

			if ($data > 0){

				$_SESSION['id'] = $data['id'];
				$_SESSION['email'] = $data['email'];

				header('Location: '. BASEURL .'Profile');
				exit;
			} else {
				$_SESSION['email'] = $_POST['email'];

				if (isset($_POST['rememberMe'])) {
					$_SESSION['rememberMe'] = 'checked';
				} else {
					$_SESSION['rememberMe'] = '';
				}

				Alert::setMsg('Email atau Password','salah','danger');

				header('Location: '. BASEURL .'login');
				exit;
			}

		} else {
			$data = $this->model('LoginModel')->userCheck($_POST, $type);

			if ($data > 0){
				$_SESSION['id_admin'] = $data['id_admin'];

				header('Location: '. BASEURL .'admin/home');
				exit;
			} else {
				$_SESSION['email'] = $_POST['email'];

				Alert::setMsg('Email atau password','salah','danger');

				header('Location: '. BASEURL .'login/admin');
				exit;
			}
		}
	}
}