<div class="bg-default body">
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
                <a href="<?= BASEURL ?>">
                  CIRCLE OF SCIENCE
                </a>
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
              <a class="nav-link nav-link-icon" href="<?= BASEURL ?>index">
                <i class="ni ni-planet"></i>
                <span class="nav-link-inner--text">Beranda</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-link-icon" href="<?= BASEURL ?>register">
                <i class="ni ni-circle-08"></i>
                <span class="nav-link-inner--text">Registrasi</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Header -->
    <div class="header bg-gradient-primary py-7 py-lg-8">
      <div class="container">
        <div class="header-body text-center mb-4">
          <div class="row justify-content-center">
            <div class="col-lg-5 col-md-6">
              <h1 class="text-white">Lupa Password</h1>
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
    <div class="container border bg-white rounded w-50">
      <?php Alert::showMessage() ?>
      <div class="row mt-5 mb-2">
        <div class="col-12 text-center pl-5 pr-5">
          <p>Mohon masukkan kode yang sudah dikirim ke email terkait, jangan beritahu siapapun kode verifikasi anda</p>
          <p class="text-muted">-Jaga kerahasiaan kode verifikasi anda-</p>
        </div>
      </div>
      <div class="row mb-5">
        <div class="col-12 d-flex justify-content-center">
          <form action="<?= BASEURL ?>help/verifyCode" method="POST" class="form-group">
            <div class="container">
              <div class="row">
                <div class="col-6">
                  <input type="text" placeholder="kode" name="code" class="form-control text-center" minlength="10" maxlength="10">
                </div>
                <div class="col-6">
                  <button class="btn btn-primary" type="submit">Verify</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- Footer -->
    <div class="footer">
      <div class="container text-center">
        <p>&copy; Copyright Circle of Science</p>
      </div>
    </div>
  </div>
</div>