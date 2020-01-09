<?php
class NilaiModel{

    private $db;

	public function __construct()
	{
		$this->db = new Database;
    }

    public function showAllDataMapel()
    {
        $query = "SELECT * from mapel";
		$this->db->query($query); // untuk menyimpan data yang akan di binding, untuk menghindari sql injection
		return $this->db->resultset();

    }

    public function searchPartner($data){
        $query = "SELECT a.nilai, a.id_mapel, a.id_udata, b.name, b.poin, b.id_peringkat, c.profilfoto,
        d.name as nama_mapel from nilai_mapel a inner join  data_pengguna b on a.id_udata = b.id_udata inner join
        berkas c on b.id_berkas = c.id_berkas inner join mapel d on d.id_mapel = a.id_mapel  where a.id_udata =
        :id and a.id_mapel = :mapel";
        $this->db->query($query);
        $this->db->bind('id',$data['id']);
        $this->db->bind('mapel',$data['mapelku']);

        $result = $this->db->single();
        print_r($result);
        $query = "SELECT a.nilai, a.id_mapel, a.id_udata, b.name, b.poin, b.id_peringkat, e.name as name_peringkat, c.profilfoto,
        d.name as name_mapel from nilai_mapel a inner join  data_pengguna b on a.id_udata = b.id_udata inner join
        berkas c on b.id_berkas = c.id_berkas inner join mapel d on d.id_mapel = a.id_mapel inner join peringkat e on e.id_peringkat = b.id_peringkat where a.id_mapel = :mapelku and a.nilai < :nilaiku";

        $this->db->query($query);
        $this->db->bind('mapelku',$result['nama_mapel']);
        $this->db->bind('nilaiku',$result['nilai']);
        print_r($this->db->resultSet());
        return $this->db->resultSet();
    }


}
