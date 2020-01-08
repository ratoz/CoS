<?php

class Rank extends Controller
{
	public function index()
	{
		$data['list'] = $this->model('RankModel')->showRank();
		$data['profil'] = $this->model('DataModel')->selectDatawithID($_SESSION['id']);
		$data['foto'] = $this->model('DataModel')->selectDatawithID($_SESSION['id']);
		$data['title'] = "Rank";
		$data['page'] = "rank";
		$i = 0;
		foreach ($data['list'] as $value) {
			$data['list'][$i]['profilfoto'] = PATHFOTO . $value['foto'];
			$i++;
		}
		//	$data['profil']= $this->model('DataModel')->selectDatawithID($_SESSION['id']);
		$this->view('templates/header', $data); //memanggil file header pada folder templates
		$this->view('templates/navbar', $data);
		$this->view('rank/index', $data); //memanggil file index pada folder dashboard
		$this->view('templates/footer', $data); //memanggil file footer pada folder templates
	}

	public function dataRank()
	{
		$data = $this->model('RankModel')->showRank();
		$data['page'] = "rank";
		if ($data > 0) {
			$data['list'] = $this->dataRank();

			$this->view('templates/header', $data); //memanggil file header pada folder templates
			$this->view('rank/index', $data); //memanggil file index pada folder dashboard
			$this->view('templates/footer'); //memanggil file footer pada folder templates
		} else {
			Alert::setMsg("Data tidak", "Ditemukan", "danger");
			header('Location: ' . BASEURL . 'rank');
		}
	}

	public function searchData()
	{
		$data['search'] = $this->model('RankModel')->showRankByKab($_POST);

		if (!empty($data['search'])) {
			$data['list'] = $this->model('RankModel')->showRank();
			$i = 0;
			foreach ($data['search'] as $value) {
				$data['search'][$i]['profilfoto'] = ("../" . PATHFOTO . $value['foto']);
				$i++;
			}

			$i = 0;
			foreach ($data['list'] as $value) {
				$data['list'][$i]['profilfoto'] = ("../" . PATHFOTO . $value['foto']);
				$i++;
			}
			$data['foto'] = $this->model('DataModel')->selectDatawithID($_SESSION['id']);
			$data['title'] = "Rank";
			$data['page'] = "rank";
			$data['path']="../".PATHFOTO;

			$this->view('templates/header', $data);
			$this->view('templates/navbar', $data); //memanggil file header pada folder templates
			$this->view('rank/index', $data); //memanggil file index pada folder dashboard
			$this->view('templates/footer', $data); //memanggil file footer pada folder templates

		} else {
			Alert::setMsg("Data tidak", "Ditemukan", "danger");
			header('Location: ' . BASEURL . 'rank');
		}
	}
}
