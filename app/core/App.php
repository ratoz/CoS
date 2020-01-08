<?php

class App {

	protected $controller = 'login';
	protected $method = 'index';
	protected $parameter = [];

    public function __construct()
    {
		session_start();
		$url = $this->parseURL();
		//print_r($url);
		//Controller
		if(strtolower($url[0])=='logout'){
			$_SESSION['id']='';
			header('Location: '.BASEURL.'Login');
            Alert::setMsg('Kamu telah keluar dari akun.','','info');
		}
		if(file_exists('../app/controllers/' . $url[0] . '.php')) { //mengambil nilai $url[0] dengan default index pada methodnya
			$this->controller = $url[0]; // mengisi variable dan menjadikannya controller dari url
			unset($url[0]); //menghilangkan controller di dalam array
		}

		require_once '../app/controllers/'. $this->controller . '.php'; //memanggil controller
		$this->controller = new $this->controller; //instansiasi
		
		//method
		if (isset($url[1])) { //check jika ada methodnya di array url
			if(method_exists($this->controller, $url[1])){ //check jika ada methodnya di dalam controllernya
				$this->method = $url[1]; //mengisi var $method dari array url
				unset($url[1]); //menghilangkan method di dalam array
			}
		}

		//parameter
		if(!empty($url)) {
			$this->parameter = array_values($url); //mengisi array parameter dengan value dari array url
		}

		call_user_func_array([$this->controller, $this->method], $this->parameter); //menjalankan controller dan method, serta mengirimkan parameter

    }
	
	// mengambil array dari url
	public function parseURL() {
		if(isset($_GET['url'])) {
			$url = rtrim($_GET['url'], '/'); // memotong url ujung, jadi tanda '/' di ujung hilang 
			$url = filter_var($url, FILTER_SANITIZE_URL); // memfilter agar tidak ada karakter yang aneh
			$url = explode('/', $url); // memecah string di dalam $url diantara '/' dan membuatnya menjadi array
			return $url;
		}
	}
}