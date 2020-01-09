<?php

class CariPartner extends Controller
{
	public function index()
	{
		$model = $this->model('DataModel');
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
}
