<?php

class Dashboard extends Controller
{
	public function index()
	{
		if ($_SESSION['id']=='' || $_SESSION['id'] == null){
            header('Location: '.BASEURL.'login');
        }
        else{
		$data['page'] = 'dashboard';
		$data['inittable']='';
		$result = $this->model('DataModel')->selectAllData();
		$data['foto'] = $this->model('DataModel')->selectDatawithID($_SESSION['id']);
		foreach($result as $value){
			$data['inittable'].= "
				<tr>
					<td> ".$value['name']." </td>
					<td> ".$value['sekolah']." </td>
					<td> ".$value['kelas']." </td>
					<td> ".$value['tingkat']." </td>
					<td> ".$value['email']." </td>
					<td> ".$value['phone']." </td>
					<td>
					<form method='get'>
					  <a href=".BASEURL."Profile/toUser/".$value['id_udata'].">Lihat</a>
					</form>
					</td>
				</tr>";
		}
		}

		$this->view('templates/header',$data); //memanggil file header pada folder templates
		$this->view('templates/navbar',$data);
		$this->view('dashboard/index',$data); //memanggil file index pada folder dashboard
		$this->view('templates/footer', $data); //memanggil file footer pada folder templates
	}

	public function AutoFill()
	{
		//header("Content-Type: application/json; charset=UTF-8");
		if(isset($_POST['search'])){
			$search = $_POST['search'];

		$result = $this->model('DataModel')->searchAllAddress($search);
		if (count($result) > 0) {
			foreach ($result as $data) {
				$response[]= $data['name'];
			}

			// Encode ke JSON.
			//echo json_encode($output);

			// Jika tidak ada yang cocok.
		} else {
				$response['name']= '';
			// Encode ke JSON.
			//echo json_encode($output);
		}
	}
	echo json_encode($response);
	}

	public function createTableCari()
	{
		$data = $this->model('DataModel')->selectDatawithKabupaten($_POST['name']);
		echo '<TR>
                <td>Nama</td>
                <td>Gender</td>
                <td>Point</td>
                <td>E-Mail</td>
                <td>No Hp</td>
                <td>Alamat</td>
			</TR>';
		foreach ($data as $value){
			$value['gender']=$this->model('DataModel')->getGender($value['gender']);
			echo '
			<TR>
				<td>'.$value['gender'].'</td>
				<td>'.$value['name'].'</td>
				<td>'.$value['email'].'</td>
				<td>'.$value['poin'].'</td>
				<td>'.$value['alamat'].'</td>
				<td>'.$value['phone'].'</td>
			</TR>';
		}
	}
}
