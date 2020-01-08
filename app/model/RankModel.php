<?php

class RankModel extends Controller
{
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }

  public function showRank()
  {
    $query = "SELECT data_pengguna.id_udata, data_pengguna.name, data_pengguna.tingkat, pengguna.status, data_pengguna.kelas, data_pengguna.poin, berkas.profilfoto as foto
    FROM data_pengguna INNER JOIN pengguna ON data_pengguna.id_udata = pengguna.id_udata INNER JOIN berkas ON data_pengguna.id_berkas = berkas.id_berkas where data_pengguna.poin > 2000 order by data_pengguna.poin DESC";

    $this->db->query($query);
    $this->db->execute();

    return $this->db->resultSet();
  }

  public function showRankByKab($data)
  {
    $kab = $this->getKabupaten($data);

    if ($data['gender'] !== 'semua') {
      if ($data['gender'] == 'male') {
        $gender = 'M';
      } else {
        $gender = 'F';
      }
      $query1 = ' AND data_pengguna.gender = :gender';
    } else {
      $query1 = " ";
    }
    //echo $gender;
    $query = "SELECT data_pengguna.id_udata, data_pengguna.name, data_pengguna.tingkat, pengguna.status, data_pengguna.kelas, data_pengguna.poin, berkas.profilfoto as foto
    FROM data_pengguna INNER JOIN pengguna ON data_pengguna.id_udata = pengguna.id_udata INNER JOIN berkas ON data_pengguna.id_berkas = berkas.id_berkas
    WHERE data_pengguna.poin>1 AND data_pengguna.id_kabupaten = :kab {$query1} ORDER BY poin DESC";
    $this->db->query($query);
    if ($data['gender'] !== 'semua') {
      $this->db->bind("gender", $gender);
    }
    $this->db->bind("kab", $kab['id_kabupaten']);
    $this->db->execute();

    return $this->db->resultSet();
  }

  public function getKabupaten($data)
  {
    $query = "SELECT * FROM kabupaten WHERE name = :kab";

    $this->db->query($query);
    $this->db->bind("kab", $data['kabupaten']);
    $this->db->execute();

    return $this->db->single();
  }
}
