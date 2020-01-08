<?php 

class CariPartner extends Controller {
    public function index() {
		$model=$this->model('DataModel');
		$data['cpartner'] = $model->selectDatawithID($_SESSION['id']); //diganti dengan session
		$data['profil']= $this->model('DataModel')->selectDatawithID($_SESSION['id']);
		$this->view('templates/header'); //memanggil file header pada folder templates
		$this->view('templates/navbar',$data);
		$this->view('caripartner/index'); //memanggil file index pada folder dashboard
		if ($data['cpartner']['id_prov']=='PR000')
		$this->view('caripartner/notvalid');
		else
		$this->view('caripartner/valid');
		$this->view('templates/footer'); //memanggil file footer pada folder templates

	}

}