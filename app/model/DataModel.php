<?php

class DataModel
{
	private $table = "data_pengguna";
	//private $id = "";
	private $condb;

	public function __construct()
	{
		$this->condb = new Database();
	}

	public function getAge($tgl_lahir)
	{
		if (intval(substr($tgl_lahir, 5, -3)) == intval(date('m'))) {
			if (intval(substr($tgl_lahir, 8)) <= intval(date('d'))) {
				$cekage = 0;
				//echo "date lewat dan month sama";
			} else {
				$cekage = 1;
				//echo "date tidak lewat namun month lewat";
			}
		} else if (intval(substr($tgl_lahir, 5, -3)) < intval(date('m'))) {
			$cekage = 0;
			//echo "date dan month lewat";
		} else {
			$cekage = 1;
			//echo "date dan month tidak lewat";
		}

		return intval(date('Y')) - intval(substr($tgl_lahir, 0, -6)) - $cekage;
	}

	public function getGender($gender)
	{
		if ($gender == "M") {
			return "Laki-Laki";
		} else {
			return "Perempuan";
		}
	}

	public function selectAllData()
	{
		$this->condb->query('SELECT d.id_udata, d.name, d.tgl_lahir, d.gender,
        d.poin, d.nisn, d.email, d.phone, d.alamat, d.kelas, d.tingkat, k.name AS KabupatenName,
        p.name AS ProvinsiName, p.id_prov, d.sekolah,
        r.name AS PeringkatName, d.id_berkas, b.profilfoto from data_pengguna d INNER JOIN kabupaten k
        ON d.id_kabupaten=k.id_kabupaten INNER JOIN provinsi p ON k.id_prov=p.id_prov INNER JOIN berkas b ON d.id_berkas=b.id_berkas
         INNER JOIN peringkat r ON r.id_peringkat=d.id_peringkat');
		return $this->condb->resultSet();
	}

	public function selectDatawithID($id)
	{
		$this->condb->query('SELECT d.id_udata, d.name, d.tgl_lahir, d.gender,
        d.poin, d.nisn, d.email, d.phone, d.alamat, k.name AS KabupatenName,
        p.name AS ProvinsiName, p.id_prov, d.sekolah, b.valid,
        r.name AS PeringkatName, d.id_berkas, b.profilfoto from data_pengguna d INNER JOIN kabupaten k
        ON d.id_kabupaten=k.id_kabupaten INNER JOIN provinsi p ON k.id_prov=p.id_prov INNER JOIN berkas b ON d.id_berkas=b.id_berkas
         INNER JOIN peringkat r ON r.id_peringkat=d.id_peringkat
         Where d.id_udata=:id'); // untuk menyimpan data yang akan di binding, untuk menghindari sql injection
		$this->condb->bind('id', $id);
		return $this->condb->single();
	}

	public function selectDatawithKabupaten($id)
	{
		$this->condb->query('SELECT * FROM kabupaten where name = :nama');
		$this->condb->bind('nama', $id);
		$data = $this->condb->single();
		$id = $data['id_kabupaten'];

		$this->condb->query('SELECT d.name, d.tgl_lahir, d.gender,
        d.poin, d.nisn, d.email, d.phone, d.alamat, k.name AS KabupatenName,
        p.name AS ProvinsiName, p.id_prov, d.sekolah,
        r.name AS PeringkatName, d.id_berkas, b.profilfoto from data_pengguna d INNER JOIN kabupaten k
        ON d.id_kabupaten=k.id_kabupaten INNER JOIN provinsi p ON k.id_prov=p.id_prov INNER JOIN berkas b ON d.id_berkas=b.id_berkas
         INNER JOIN peringkat r ON r.id_peringkat=d.id_peringkat
         Where k.id_kabupaten=:id'); // untuk menyimpan data yang akan di binding, untuk menghindari sql injection
		$this->condb->bind('id', $id);
		return $this->condb->resultSet();
	}

	/** Fungsi untuk memanggil provinsi atau kabupaten dan menampilkannya dalam tag option.
	 * $option : Mempunyai dua pilihan, yaitu
	 * "prov" => Mengambil data Provinsi,
	 * "kab" => Mengambil data Kabupaten.
	 * $provid : Adalah id provinsi yang akan dibandingkan jika kabupaten dipilih
	 */
	public function selectAllDataAddress($option, $provid = null)
	{
		$option = strtolower($option);
		if ($option == "prov") {
			$this->condb->query("SELECT id_prov as id , name from provinsi");
			$temp = $this->condb->resultSet();
			$id = "p";
		} else {
			$this->condb->query("SELECT id_kabupaten as id, name from kabupaten where id_prov = '$provid'");
			$id = "k";
		}
		$i = 0;
		$temp = $this->condb->resultSet();
		$result = "";
		foreach ($temp as $value) {
			$value['id'] = substr($value['id'], 2);
			if ($i == 0)
				$result = "<option value='" . $id . ($value['id']) . "'>" . $value['name'] . "</option>";
			else
				$result .= "<option value='" . $id . ($value['id']) . "'>" . $value['name'] . "</option>";
			$i++;
		}
		return $result;
	}

	public function searchAllAddress($data)
	{
		$query = "SELECT * FROM kabupaten WHERE name LIKE :name ORDER BY name DESC";
		$this->condb->query($query);
		error_reporting(0);
		$this->condb->bind('name', '%' . $data . '%');
		//$this->condb->execute();
		return $this->condb->resultSet();
	}


	public function ubahDataFoto($datafoto, $id)
	{
		$errors = array();
		$file_name = $datafoto['name'];
		$file_size = $datafoto['size'];
		$file_tmp = $datafoto['tmp_name'];
		$file_type = $datafoto['type'];
		$file_ext = explode('.', $file_name);
		$file_ext = strtolower(end($file_ext));

		$extensions = array("jpeg", "jpg", "png");

		if (in_array($file_ext, $extensions) === false) {
			$errors[] = "extension not allowed, please choose a JPEG or PNG file.";
		}

		if ($file_size > 2097152) {
			$errors[] = 'File size must be excately 2 MB';
		}
		if (empty($errors) == true) {

			$file_name = "img" . $id . "." . $file_ext;
			move_uploaded_file($file_tmp, PATHFOTO . $file_name);

			$query = "UPDATE berkas SET
			profilfoto = :pathfoto
			WHERE id_berkas =  :id  ";

			$this->condb->query($query);
			$this->condb->bind('pathfoto', $file_name);
			$this->condb->bind('id', $id);

			$this->condb->execute();

			return $this->condb->rowCount();
			//echo "Success";

		} else {
			return false;
		}
	}

	public function ubahDataPengguna($data)
	{

		$query = "UPDATE data_pengguna SET
			name = :n,
			gender = :g,
			nisn = :ni,
			email = :em,
			phone = :ph,
			alamat = :al,
			sekolah = :se,
			id_kabupaten = :ka
			WHERE id_udata =  :id  ";

		$this->condb->query($query);
		$this->condb->bind('n', $data['name']);
		$this->condb->bind('g', $data['gender']);
		$this->condb->bind('ni', $data['nisn']);
		$this->condb->bind('em', $data['email']);
		$this->condb->bind('ph', $data['phone']);
		$this->condb->bind('al', $data['alamat']);
		$this->condb->bind('se', $data['sekolah']);
		$this->condb->bind('ka', $data['kabupaten']);
		$this->condb->bind('id', $data['id']);

		$this->condb->execute();
	}

	public function CreateUser($data)
	{
		$querycekemail = "select * from data_pengguna where email= :email";
		$this->condb->query($querycekemail);
		$this->condb->bind('email', $data['email']);
		$this->condb->execute();

		$usageemail = $this->condb->rowCount();

		if ($usageemail > 0) {
			$data['error'] = 'Email Sudah Digunakan!';
			return $data;
		} else {
			$data['error'] = '';
			$queryid = "select MAX(id_user) from pengguna";
			$this->condb->query($queryid);
			$this->condb->execute();
			$id = $this->condb->single();
			$MaxID = $id["MAX(id_user)"];
			$temp_udata = (int) substr($MaxID, 4, 6);
			// lalu ditambah 1
			$temp_udata = $temp_udata + 1;
			$data['id_udata'] = "UDAA" . sprintf("%06s", $temp_udata);
			$data['id_user'] = "IDAA" . sprintf("%06s", $temp_udata);
			$data['id_berkas'] = "BRAA" . sprintf("%06s", $temp_udata);

			$queryinsert = "INSERT INTO `berkas`(`id_berkas`, `valid`, `raport`, `profilfoto`)
			VALUES (:id_berkas , :valid , :raport , :profilfoto)";
			$this->condb->query($queryinsert);
			$this->condb->bind("valid", 0);
			$this->condb->bind("raport", "undefined");
			$this->condb->bind("profilfoto", "undefined");
			$this->condb->bind("id_berkas", $data['id_berkas']);
			$this->condb->execute();

			$queryinsert = "INSERT INTO `data_pengguna`(`id_udata`, `name`, `tgl_lahir`, `gender`, `poin`, `nisn`, `email`, `phone`, `alamat`, `id_kabupaten`, `id_peringkat`, `sekolah`, `tingkat`, `kelas`, `id_berkas`)
			VALUES
			( :id_udata , :name , :tgl_lahir , :gender, :poin, :nisn, :email , :phone, :alamat, 'KB000', 'PK001',:sekolah, :tingkat, :kelas, :id_berkas)";
			$this->condb->query($queryinsert);
			$this->condb->bind("id_udata", $data['id_udata']);
			$this->condb->bind("name", $data['name']);
			$this->condb->bind("tgl_lahir", $data['tgl_lahir']);
			$this->condb->bind("gender", $data['gender']);
			$this->condb->bind("poin", 0);
			$this->condb->bind("nisn", $data['nisn']);
			$this->condb->bind("email", $data['email']);
			$this->condb->bind("phone", $data['phone']);
			$this->condb->bind("alamat", "Belum mengisi alamat");
			$this->condb->bind("sekolah", $data['sekolah']);
			$this->condb->bind("tingkat", $data['tingkat']);
			$this->condb->bind("kelas", $data['kelas']);
			$this->condb->bind("id_berkas", $data['id_berkas']);
			$this->condb->execute();

			$queryinsert = "INSERT INTO `pengguna`(`id_user`, `username`, `password`, `id_udata`, `status`, `reason`) VALUES
			(:id_user, :username, :password, :id_udata, :status, :reason)";
			$this->condb->query($queryinsert);
			$this->condb->bind("id_user", $data['id_user']);
			$this->condb->bind("username", $data['username']);
			$this->condb->bind("password", $data['password']);
			$this->condb->bind("id_udata", $data['id_udata']);
			$this->condb->bind("status", "Active");
			$this->condb->bind("reason", "No Reason");
			$this->condb->execute();
		}
	}

	public function ubahDataRaport($dataraport, $id)
	{
		$errors = array();
		$file_name = $dataraport['name'];
		$file_size = $dataraport['size'];
		$file_tmp = $dataraport['tmp_name'];
		$file_type = $dataraport['type'];
		$file_ext = explode('.', $file_name);
		$file_ext = strtolower(end($file_ext));

		$extensions = array("pdf");

		if (in_array($file_ext, $extensions) === false) {
			$errors[] = "Mohon upload file berekstensi JPEG atau PNG saja";
		}

		if ($file_size > 8388608) {
			$errors[] = 'Ukuran file harus dibawah 8MB';
		}
		if (empty($errors) == true) {

			$file_name = "raport" . $id . "." . $file_ext;
			move_uploaded_file($file_tmp, PATHRAPORT . $file_name);

			$query = "UPDATE berkas SET
			raport = :pathraport
			WHERE id_berkas =  :id  ";

			$this->condb->query($query);
			$this->condb->bind('pathraport', $file_name);
			$this->condb->bind('id', $id);

			$this->condb->execute();

			return true;
			//echo "Success";

		} else {
			return false;
		}
	}

	public function ticket($data)
	{
		print_r($data);
		$query = "INSERT INTO `help_ticket`(`name`, `email`, `judul_ticket`, `jenis_ticket`, `isi_ticket`, `status`) VALUES ( :name, :email, :judul , :tipe , :code, :status)";

		$this->condb->query($query);
		$this->condb->bind("judul", 'Validasi Rapot');
		$this->condb->bind("tipe", 'Validasi');
		$this->condb->bind("name", $data['id_berkas'] . "," . $data['name']);
		$this->condb->bind("email", $data['email']);
		$this->condb->bind("code", 'Validasi rapot untuk menggunakan fitur cari partner.');
		$this->condb->bind("status", "Unread");

		$this->condb->execute();
	}

	public function getidCount()
	{
		$query = "SELECT * FROM help_ticket";

		$this->condb->query($query);
		$this->condb->execute();

		return $this->condb->rowCount();
	}
	public function Rating($datarate)
	{
		print_r($datarate);
		$therate = $datarate['dataRate'] * 20;
		$receive = $datarate['receive'];
		$send = $datarate['send'];

		$query = "SELECT * FROM star_pengguna WHERE id_send = :send ";

		$this->condb->query($query);
		$this->condb->bind("send", $send);
		$this->condb->execute();

		$result = $this->condb->resultSet();
		if ($result == 0) {
			echo "KN";
			// mengambil id datauser (maksimum)
			$query = "SELECT MAX(id_star) FROM star_pengguna";

			$this->condb->query($query);
			$this->condb->execute();

			$data = $this->condb->resultSet();
			// data id_datauser terakhir disimpan ke variabel baru $MaxID
			$MaxID = $data[0];
			$temp_udata = (int) substr($MaxID, 4, 6);
			// lalu ditambah 1
			$temp_udata = $temp_udata + 1;

			echo $id_star = "STAA" . sprintf("%06s", $temp_udata);
			$query = "INSERT INTO star_pengguna VALUES (:id_star,{intval($therate)},:receive,:send)";

			$this->condb->bind("id_star", $id_star);
			$this->condb->bind("receive", $receive);
			$this->condb->bind("send", $send);
			if ($this->condb->query($query)) {
				echo "New record created successfully";
			} else {
				echo "Error: " . $query . "<br>";
			}
			//mysqli_query($conn, ;
		} else {
			echo "TL";
			$query = "UPDATE star_pengguna SET rate_poin=$therate where id_send=:receive";
			if ($this->condb->query($query)) {
				echo "New record created successfully";
			} else {
				echo "Error: " . $query . "<br>";
			}
		}
	}

	public function ShowRating($id)
	{

		$query = "SELECT * FROM star_pengguna where id_receive = :id ";

		$this->condb->query($query);
		$this->condb->bind("id", $id);
		$this->condb->execute();

		$result = $this->condb->resultSet();
		$data['rate_value'] = 0;
		if ($result == 0) {
			$data['rate_times'] = 0;
			$data['rate_bg'] = 0;
			$data['rate_value'] = 0;
		} else {
			while ($result) {
				$data['rate_value'] += $result['rate_poin'];
			}
			$data['rate_times'] = $this->condb->rowCount();
			$data['rate_value'] = ($data['rate_value'] / ($data['rate_times'] * 100)) * 5;
			$data['rate_bg'] = ($data['rate_value'] / 5) * 100;
		}
		return $data;
	}
}
