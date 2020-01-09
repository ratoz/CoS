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
		$data['count']=count($result);
		$data['pagination']=$data['count']/10;

		$data['foto'] = $this->model('DataModel')->selectDatawithID($_SESSION['id']);
		foreach(array_slice($result,0,10) as $value){
			$data['inittable'].= "
				<tr>
					<td> " . $value['name'] . " </td>
					<td> " . $value['sekolah'] . " </td>
					<td> " . $value['kelas'] . " </td>
					<td> " . $value['tingkat'] . " </td>
					<td> " . $value['email'] . " </td>
					<td> " . $value['phone'] . " </td>
					<td>
					<form method='get'>
					  <a href=" . BASEURL . "Profile/toUser/" . $value['id_udata'] . ">Lihat</a>
					</form>
					</td>
				</tr>";
			}
		}

		$this->view('templates/header', $data); //memanggil file header pada folder templates
		$this->view('templates/navbar', $data);
		$this->view('dashboard/index', $data); //memanggil file index pada folder dashboard
		$this->view('templates/footer', $data); //memanggil file footer pada folder templates
	}

	public function showPagination(){
		$result = $this->model('DataModel')->selectAllData();
		$data['count']=count($result);
		$data['pagination']=$data['count']/10;
		$min=10*($_POST['page']-1);
		$max=10;
		$data['foto'] = $this->model('DataModel')->selectDatawithID($_SESSION['id']);
		echo "<tr>
		<th>Nama</th>
		<th>Sekolah</th>
		<th>Kelas</th>
		<th>Tingkat</th>
		<th>No Hp</th>
		<th>Email</th>
		<th>Action</th>
	  </tr>";
		foreach(array_slice($result,$min,$max) as $value){
			echo "
				<tr>
					<td> " . $value['name'] . " </td>
					<td> " . $value['sekolah'] . " </td>
					<td> " . $value['kelas'] . " </td>
					<td> " . $value['tingkat'] . " </td>
					<td> " . $value['email'] . " </td>
					<td> " . $value['phone'] . " </td>
					<td>
					<form method='get'>
					  <a href=" . BASEURL . "Profile/toUser/" . $value['id_udata'] . ">Lihat</a>
					</form>
					</td>
				</tr>";
			}
		}


	public function AutoFill()
	{
		//header("Content-Type: application/json; charset=UTF-8");
		if (isset($_POST['search'])) {
			$search = $_POST['search'];

			$result = $this->model('DataModel')->searchAllAddress($search);
			if (count($result) > 0) {
				foreach ($result as $data) {
					$response[] = $data['name'];
				}

				// Encode ke JSON.
				//echo json_encode($output);

				// Jika tidak ada yang cocok.
			} else {
				$response['name'] = '';
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
		foreach ($data as $value) {
			$value['gender'] = $this->model('DataModel')->getGender($value['gender']);
			echo '
			<TR>
				<td>' . $value['gender'] . '</td>
				<td>' . $value['name'] . '</td>
				<td>' . $value['email'] . '</td>
				<td>' . $value['poin'] . '</td>
				<td>' . $value['alamat'] . '</td>
				<td>' . $value['phone'] . '</td>
			</TR>';
		}
	}
}
