<?php

class CariPartner extends Controller
{
	public function index()
	{
		//$model = $this->model('DataModel');
		$data['mapel'] = $this->model('NilaiModel')->showAllDataMapel();

		$data['foto']= $this->model('DataModel')->selectDatawithID($_SESSION['id']);
		$data['page']='caripartner';
		$this->view('templates/header',$data); //memanggil file header pada folder templates
		$this->view('templates/navbar', $data);
		$this->view('caripartner/index',$data); //memanggil file index pada folder dashboard
		if ($data['foto']['id_prov'] == 'PR000')
			$this->view('caripartner/notvalid',$data);
		else
			$this->view('caripartner/valid',$data);
		$this->view('templates/footer'); //memanggil file footer pada folder templates

	}

	public function searchPartner(){
		$data['id']= $_SESSION['id'];
		print_r($_POST);
		$data['mapeldia'] = $_POST['mapel_tinggi'];
		$data['mapelku'] = $_POST['mapel_rendah'];
		$data['sekolah'] = $_POST['tingkat_sekolah'];
		$data['kelas'] = $_POST['tingkat_kelas'];
		$data['search'] = $this->model('NilaiModel')->searchPartner($data);
		print_r($data['search']);
		$data['foto']= $this->model('DataModel')->selectDatawithID($_SESSION['id']);
		$this->view('templates/header',$data); //memanggil file header pada folder templates
		$this->view('templates/navbar', $data);
		$this->view('caripartner/index',$data); //memanggil file index pada folder dashboard
		if ($data['foto']['id_prov'] == 'PR000')
			$this->view('caripartner/notvalid',$data);
		else
			$this->view('caripartner/valid',$data);
		$this->view('templates/footer');


	}
}
