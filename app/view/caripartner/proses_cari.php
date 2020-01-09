<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_cos";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['submit'])){

    $id_user    = $_SESSION['id'];
    $id_mapeltinggi   = $_POST['mapel_tinggi'];
    $id_mapelrendah   = $_POST['mapel_rendah'];
    $nilaitinggi      = $_POST['nilai_tinggi'];
    $nilairendah      = $_POST['nilai_rendah'];
    $sekolah          = $_POST['tingkat_sekolah'];
    $kelas            = $_POST['tingkat_kelas'];

    $sql = "SELECT n.nilai,m.id_mapel, m.name, d.name, d.sekolah, d.kelas
            FROM nilai_mapel n
            LEFT JOIN mapel m on m.id_mapel = n.id_mapel 
            LEFT JOIN data_pengguna d on d.id_udata=n.id_udata
            WHERE n.id_udata <> '$id_user' AND d.sekolah LIKE '%$sekolah%' AND d.kelas LIKE '%$kelas%'
            AND ((n.nilai <= '$nilaitinggi' AND n.id_mapel='$id_mapeltinggi')
            OR (n.nilai > '$nilairendah' AND n.id_mapel = '$id_mapelrendah' AND n.nilai > '50'))";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $i = 0;
        while ($row = $result->fetch_assoc()) {
            $nilai[] = $row['nilai'];
            $idmapel[] = $row['id_mapel'];
            $mapel[] = $row['name'];
            $school[] = $row['sekolah'];
            $class[] = $row['kelas'];
            $name[] = $row['name'];
            $i += 1;
        }
    } else {
        echo "";
    }
    error_reporting(0);
    echo 
    "
    <div class='col-xl-15 order-xl-1 pt-5'>
      <div class='card bg-secondary shadow'>
        <div class='card-header bg-white border-0' >
          <div class='row align-items-center'>
            <div class='col-12' >
                <table width='760px'>
                    <tbody>
                        <div class='text-center'>
                            <h3 class='mb-0'>Rekomendasi Partner Belajar Kamu</h3>
                        </div>
                    </tbody>
                </table>
            </div>
          </div>
        </div>
        <div class='card-body'>
          <form method='post' action='#'>
            <div class='pl'>
              <div class='table-responsive'>";    
                for ($f=0;$f<$i;$f++){
                    if ($name[$f+1]==$name[$f]) {
                        if($idmapel[$f] !== $id_mapelrendah) {
                            echo 
                            "
                            <table width='760px'>
                                <tbody>
                                    <tr>
                                        <td rowspan='3'>
                                            <div class='text-center'>
                                                <img alt='user' width='120px' height='120px' src='../assets/img/user.png'>
                                            </div>
                                            <div class='text-center'>
                                                <br>
                                                <h3>{$name[$f]}</h3>
                                                <h4>Kelas {$class[$f]}</h4>
                                                <h4>{$school[$f]}</h4>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class='text-center'>
                                                Untuk Partner
                                                <h3>{$mapel[$f+1]}</h3>
                                                <hr class='my-4'/>
                                            </div>
                                        </td>
                                        <td>
                                            <div class='text-center'>
                                                Butuh Partner
                                                <h3>{$mapel[$f]}</h3>
                                                <hr class='my-4'/>
                                            </div>
					                    </td>
					                    <td>
                                            <div class='text-center'>
                                                <button type='submit' class='btn btn-info' name='lihat'>Lihat</button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class='text-center'>
                                                <h2>{$nilai[$f+1]}</h2>
                                            </div>
                                        </td>
                                        <td>
                                            <div class='text-center'>
                                                <h2>{$nilai[$f]}</h2>
                                            </div>
                                        </td>
					                    <td>
                                            <div class='text-center'>
                                                <button type='submit' class='btn btn-success' name='tambah'>Tambah</button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr class='my-4' />
                            ";
                            error_reporting(0);               
                        } else {
                            echo 
                            "
                            <table width='760px'>
                                <tbody>
                                    <tr>
                                        <td rowspan='3'>
                                            <div class='text-center'>
                                                <img alt='user' width='120px' height='120px' src='../assets/img/user.png'>
                                            </div>
                                            <div class='text-center'>
                                                <br>
                                                <h3>{$name[$f]}</h3>
                                                <h4>Kelas {$class[$f]}</h4>
                                                <h4>{$school[$f]}</h4>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class='text-center'>
                                                Untuk Partner
                                                <h3>{$mapel[$f]}</h3>
                                                <hr class='my-4'/>
                                            </div>
                                        </td>
                                        <td>
                                            <div class='text-center'>
                                                Butuh Partner
                                                <h3>{$mapel[$f+1]}</h3>
                                                <hr class='my-4'/>
                                            </div>
					                    </td>
					                    <td>
                                            <div class='text-center'>
                                                <button type='submit' class='btn btn-info' name='lihat'>Lihat</button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                    <td>
                                        <div class='text-center'>
                                            <h2>{$nilai[$f]}</h2>
                                        </div>
                                    </td>
                                    <td>
                                        <div class='text-center'>
                                            <h2>{$nilai[$f+1]}</h2>
                                        </div>
                                    </td>
					                <td>
                                        <div class='text-center'>
                                            <button type='submit' class='btn btn-success' name='tambah'>Tambah</button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <hr class='my-4' />
                        ";
                        error_reporting(0);
                    }
                }
                error_reporting(0);
            }
            echo 
            "
            <div class='text-center'>
              <h5 class='mb-0'>Hasil Pencarian</h3>
            </div>
        </div>
    </form>
  </div>
</div>
</div>
";
};
    
?>