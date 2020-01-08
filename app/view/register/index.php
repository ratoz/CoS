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


<div class="main-content">
  <!-- Navbar -->
  <nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
    <div class="container px-4">
      <div style="color:white">
        CIRCLE OF SCIENCE
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar-collapse-main">
        <!-- Collapse header -->
        <div class="navbar-collapse-header d-md-none">
          <div class="row">
            <div class="col-6 collapse-brand">
              <p>
                CIRCLE OF SCIENCE
              </p>
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div>
        <!-- Navbar items -->
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link nav-link-icon" href="../index.html">
              <i class="ni ni-planet"></i>
              <span class="nav-link-inner--text">Beranda</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link nav-link-icon" href="../examples/register.html">
              <i class="ni ni-circle-08"></i>
              <span class="nav-link-inner--text">Registrasi</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link nav-link-icon" href="../examples/login.html">
              <i class="ni ni-key-25"></i>
              <span class="nav-link-inner--text">Masuk</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link nav-link-icon" href="../examples/profile.html">
              <i class="ni ni-single-02"></i>
              <span class="nav-link-inner--text">Profil</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Header -->
  <div class="header bg-gradient-primary py-7 py-lg-8">
    <div class="container">
      <div class="header-body text-center mb-7">
        <div class="row justify-content-center">
          <div class="col-lg-5 col-md-6">
            <h3 class="text-white">Selamat Datang Di Circle Of Science</h3>
          </div>
        </div>
      </div>
    </div>
    <div class="separator separator-bottom separator-skew zindex-100">
      <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
      </svg>
    </div>
  </div>
  <!-- Page content -->
  <div class="container mt--8 pb-5">
    <!-- Table -->
    <div class="row justify-content-center">
      <div class="col-lg-6 col-md-8">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header bg-transparent pb-5">
            <div class="text-muted text-center mt-2 mb-4"><small>Masukan Data Diri Anda</small></div>
            <?php Alert::ShowMessage() ?>
            <form method="POST" action="<?=BASEURL?>Register/createuser">
              <div style="width: 350px;" class="form-group">
                <input type="email" class="form-control" id="email" placeholder="Masukan Email" name="email">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" id="username" placeholder="Masukan Username" name="username">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" id="name" placeholder="Masukan Nama Anda" name="name">
              </div>
              <div class="form-group">
                <label for="gender"> Jenis Kelamin : </label><br>
                <label class="radio-inline">
                  <input type="radio" name="gender" value="M" checked> Laki - Laki </label>
                <label class="radio-inline">
                  <input type="radio" name="gender" value="F"> Perempuan </label>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" id="sekolah" placeholder="Masukan Sekolah" name="sekolah">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" id="nisn" placeholder="Masukan NISN" name="nisn">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" id="number" placeholder="Masukan No Hp" name="phone">
              </div>
              <div style="width: 250px;" class="form-group">
                <input type="date" class="form-control" id="tgl_lahir" placeholder="Masukan Tanggal Lahir" name="tgl_lahir">
              </div>
              <div class="form-group">
                <label for="tingkat"> Tingkat : </label><br>
                <label class="radio-inline">
                  <input type="radio" name="tingkat" value="SMP" checked> SMP </label>
                <label class="radio-inline">
                  <input type="radio" name="tingkat" value="SMA"> SMA </label>
                <label class="radio-inline">
                  <input type="radio" name="tingkat" value="SMK"> SMK </label>
              </div>
              <div style="width: 150px;" class="form-group">
                <input type="number" class="form-control" id="usia" name="kelas" placeholder="Kelas" min="1" max="3">
              </div>
              <div class="form-group">
                <input type="password" class="form-control" id="password" placeholder="Masukan Password" name="password">
              </div>
              <div class="text-center">
                <input type="submit" name="submit" class="btn btn-primary mt-4" value="Buat Akun">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Footer -->
<footer class="py-5">
  <div class="container">
    <div class="row align-items-center justify-content-xl-between">
      <div class="col-xl-6">
        <div class="copyright text-center text-xl-left text-muted">
          <p>Circle Of Science</p>
        </div>
      </div>
    </div>
  </div>
</footer>
</div>