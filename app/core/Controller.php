<?php

class Controller {
	public function view($view, $data = []) { //method yang akan di panggil di controller
		require_once '../app/view/' . $view . '.php'; //memanggil view yang dibutuhkan
	}

	public function model($model) {
    	require_once '../app/model/'. $model . '.php';
    	return new $model;
    }
}