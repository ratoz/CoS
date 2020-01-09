<?php

class About extends Controller
{
  public function index()
  {
    $data['page'] = 'about';
		$data['title'] = 'About';

    $data['foto'] = $this->model('DataModel')->selectDatawithID($_SESSION['id']);
    $this->view('templates/header', $data); //memanggil file header pada folder templates
		$this->view('templates/navbar', $data);
		$this->view('about/index', $data); //memanggil file index pada folder dashboard
		$this->view('templates/footer', $data); //memanggil file footer pada folder templates
  }
}
