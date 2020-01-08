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
                  <a href="../index.php">
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
                <a class="nav-link nav-link-icon" href="<?= BASEURL?>">
                  <i class="ni ni-planet"></i>
                  <span class="nav-link-inner--text">Beranda</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- Header -->
      <div class="header bg-gradient-primary py-7 py-lg-8">
        <div class="container">
          <div class="header-body text-center mb-3">
            <div class="row justify-content-center">
              <div class="col-lg-5 col-md-6">
                <h1 class="text-white">Selamat Datang</h1>
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
        <div class="row justify-content-center">
          <div class="col-lg-5 col-md-7">
            <div class="card bg-secondary shadow border-0">
              <div class="card-header bg-transparent pb-5">
                <div class="text-muted text-center mt-2 mb-3">Login</div>
                <?php Alert::showMessage();?>
                <form role="form" action="<?= BASEURL ?>login/verify/admin" method="POST">
                  <div class="form-group mb-3">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-circle-08"></i></span>
                      </div>
                      <input class="form-control" placeholder="Username" type="text" name="username">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                      </div>
                      <input class="form-control" placeholder="Password" type="password" name="pass">
                    </div>
                  </div>
                  <div class="text-center mt-3">
                    <button type="submit" class="btn btn-primary my-4">Masuk</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer">
        <div class="container text-center">
          <p>&copy; Copyright Circle of Science</p>
        </div>
      </div>
    </div>
</div>