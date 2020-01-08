<?php

class Register extends Controller
{
	public function index()
	{
		$data['page']='register';
		$this->view('templates/header'); //memanggil file header pada folder templates
		$this->view('register/index'); //memanggil file index pada folder dashboard
		$this->view('templates/footer',$data); //memanggil file footer pada folder templates
	}

	public function createuser()
	{
		$data['id_udata']       = $_POST['id_udata'];
		$data['email']         = $_POST['email'];
		$data['name']   		    = $_POST['name'];
		$data['gender']       	= $_POST['gender'];
		$data['sekolah'] 		  	= $_POST['sekolah'];
		$data['nisn']        		= $_POST['nisn'];
		$data['phone']        	= $_POST['phone'];
		$data['tgl_lahir']      = $_POST['tgl_lahir'];
		$data['tingkat']        = $_POST['tingkat'];
		$data['kelas']        	= $_POST['kelas'];
		$data['username'] 			= $_POST['username'];
		$data['password'] 			= $_POST['password'];

		$data = $this->model("DataModel")->CreateUser($data);
		if ($data['error']==''||null){
			header("Location: ".BASEURL."Login");
			Alert::setMsg('Akun telah dibuat. Silahkan Login.', 'Berhasil!','success');
		}
		else{
			header("Location: ".BASEURL."Register");
			Alert::setMsg('Email telah digunakan.', 'Gagal!','danger');
		}
	}
}
