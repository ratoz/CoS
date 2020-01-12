<!--

=========================================================
* Argon Dashboard - v1.1.0
=========================================================

* Product Page: https://www.creative-tim.com/product/argon-dashboard
* Copyright 2019 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
    Circle Of Science
  </title>
  <!-- Favicon -->
  <link href="../assets/img/brand/" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="../assets/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
  <link href="../assets/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="../assets/css/argon-dashboard.css?v=1.1.0" rel="stylesheet" />
</head>

<body class="">
  <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    <div class="container-fluid">
      <!-- Toggler -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- Brand -->
      <h3 class="navbar-brand pt-0">
        Circle Of Science
      </h3>
      <!-- User -->
      <ul class="nav align-items-center d-md-none">
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <div class="media align-items-center">
              <span class="avatar avatar-sm rounded-circle">
                <img alt="" src="">
              </span>
            </div>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
            <div class=" dropdown-header noti-title">
              <h6 class="text-overflow m-0">Selamat Datang</h6>
            </div>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-single-02"></i>
              <span>Profil Saya</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-settings-gear-65"></i>
              <span>Pengaturan</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#!" class="dropdown-item">
              <i class="ni ni-user-run"></i>
              <span>Keluar</span>
            </a>
          </div>
        </li>
      </ul>
      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main">
        <!-- Collapse header -->
        <div class="navbar-collapse-header d-md-none">
          <div class="row">
            <div class="col-6 collapse-brand">
              <h3>
                Circle Of Science
              </h3>
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div>
       <!-- Navigation -->
        <ul class="navbar-nav">
          <li class="nav-item">
          <a class=" nav-link " href="<?=BASEURL?>dashboard"> <i class="ni ni-tv-2 text-primary"></i> Beranda
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="<?=BASEURL?>caripartner">
              <i class="ni ni-planet text-blue"></i> Cari Partner
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?=BASEURL?>profile">
              <i class="ni ni-single-02 text-yellow"></i> Profil Pengguna
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="<?=BASEURL?>rank">
              <i class="ni ni-bullet-list-67 text-red"></i> Rank
            </a>
          </li>
          <li class="nav-item">
          <a class="nav-link " href="<?= BASEURL; ?>about">
            <i class="ni ni-app text-default"></i> Tentang Website
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="<?= BASEURL; ?>Logout">
            <i class="ni ni-key-25 text-info"></i> Keluar
          </a>
        </li>
        </ul>
        <!-- Divider -->
        <hr class="my-3">
        <!-- Heading -->
      </div>
    </div>
  </nav>
  <div class="main-content">
    <!-- Navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
        <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" >Cari Partner</a>
        <!-- User -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
                <span class="avatar avatar-sm rounded-circle">
                  <img alt="" src="">
                </span>
                <div class="media-body ml-2 d-none d-lg-block">
                  <span class="mb-0 text-sm  font-weight-bold">User</span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              <div class=" dropdown-header noti-title">
                <h6 class="text-overflow m-0">Selamat Datang</h6>
              </div>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-single-02"></i>
                <span>Profil Saya</span>
              </a>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-settings-gear-65"></i>
                <span>Pengaturan</span>
              </a>
              <div class="dropdown-divider"></div>
              <a href="#!" class="dropdown-item">
                <i class="ni ni-user-run"></i>
                <span>Keluar</span>
              </a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!-- End Navbar -->
    <!-- Header -->
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
          <center><h1 class="display-5 text-white">Temukan Sekarang Partner Belajar Kamu !</h1></center>
         
          <!-- CONTENT -->
          
        </div>
      </div>
    </div>
    <div class="container-fluid mt--5">
    <div class="row justify-content-center">
          <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-12">
                  <div class="text-center">
                  <h3 class="mb-0">Data Nilai Kamu</h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body">
              <form method="post" action="#">
                <div class="text-center">
                  <h6 class="heading-small text-muted mb-4">Masukkan Data Nilai Kamu</h6>
                </div>
                <div class="pl">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label">Mata Pelajaran</label>
                        <select class="form-control form-control-alternative" name="mapel_tinggi">
                          <option value="MP001">Pendidikan Pancasila dan Kewarganegaraan</option>
                          <option value="MP002">Matematika</option>
                          <option value="MP003">Bahasa Indonesia</option>
                          <option value="MP004">Bahasa Inggris</option>
                          <option value="MP005">Biologi</option>
                          <option value="MP006">Fisika</option>
                          <option value="MP007">Kimia</option>
                          <option value="MP008">Geografi</option>
                          <option value="MP009">Sejarah</option>
                          <option value="MP010">Sosiologi dan Anthropologi</option>
                          <option value="MP011">Ekonomi</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label">Filter Data Sekolah</label>
                        <select class="form-control form-control-alternative" name="tingkat_sekolah">
                          <option value="SMP">SMP (Sekolah Menengah Pertama)</option>
                          <option value="SMA">SMA (Sekolah Menengah Atas)</option>
                          <option value="SMK">SMK (Sekolah Menengah Kejuruan)</option>
                        </select> 
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                          <label class="form-control-label">Nilai Tinggi</label>
                          <input type="text" class="form-control form-control-alternative" name="nilai_tinggi" >                 
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                      <label class="form-control-label">Filter Data Kelas</label>
                          <select class="form-control form-control-alternative" name="tingkat_kelas">
                          <option value="1">Kelas 1</option>
                          <option value="2">Kelas 2</option>
                          <option value="3">Kelas 3</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label">Mata Pelajaran (Partner)</label>
                        <select class="form-control form-control-alternative" name="mapel_rendah">
                          <option value="MP001">Pendidikan Pancasila dan Kewarganegaraan</option>
                          <option value="MP002">Matematika</option>
                          <option value="MP003">Bahasa Indonesia</option>
                          <option value="MP004">Bahasa Inggris</option>
                          <option value="MP005">Biologi</option>
                          <option value="MP006">Fisika</option>
                          <option value="MP007">Kimia</option>
                          <option value="MP008">Geografi</option>
                          <option value="MP009">Sejarah</option>
                          <option value="MP010">Sosiologi dan Anthropologi</option>
                          <option value="MP011">Ekonomi</option>
                        </select>
                      </div>
                    </div> 
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                          <label class="form-control-label">Nilai Rendah</label>
                          <input type="text" class="form-control form-control-alternative" name="nilai_rendah">
                      </div>
                    </div>
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary my-4" name="submit">Cari Partner</button>
                  </div>
                </div>
                <!-- Address -->
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
      
                    <?php include "proses_cari.php" ?>     
  </div>
  </div>
  
  <!--   Core   -->
  <script src="../assets/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
  <script src="../assets/js/plugins/clipboard/dist/clipboard.min.js"></script>
  <!--   Argon JS   -->
  <script src="../assets/js/argon-dashboard.min.js?v=1.1.0"></script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script>
    window.TrackJS &&
      TrackJS.install({
        token: "ee6fab19c5a04ac1a32a645abde4613a",
        application: "argon-dashboard-free"
      });
  </script>
</body>

</html>