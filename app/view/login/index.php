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
                <a class="nav-link nav-link-icon" href="<?= BASEURL?>index">
                  <i class="ni ni-planet"></i>
                  <span class="nav-link-inner--text">Beranda</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link nav-link-icon" href="<?= BASEURL?>register">
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
      <div class="container mt--8 pb-4 pt-2">
        <div class="row justify-content-center">
          <div class="col-lg-5 col-md-7">
            <div class="card bg-secondary shadow border-0">
              <div class="card-header bg-transparent pb-2 ">
                <div class="text-muted text-center mt-2 mb-2">Login</div>
                <?php Alert::showMessage();?>
                <form role="form" action="<?= BASEURL ?>login/verify/user" method="POST">
                  <div class="form-group mb-3">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                      </div>
                      <input class="form-control" placeholder="Email" type="email" name="email" value="<?= $data['email']?>" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                      </div>
                      <input class="form-control" placeholder="Password" type="password" name="pass" required>
                    </div>
                  </div>
                  <div class="custom-control custom-control-alternative custom-checkbox">
                    <input class="custom-control-input" id=" customCheckLogin" type="checkbox" name="rememberMe" <?= $data['rememberMe']?>>
                    <label class="custom-control-label" for=" customCheckLogin">
                      <span class="text-muted">ingat saya</span>
                    </label>
                  </div>
                  <div class="text-center mt-5">
                    <button type="submit" class="btn btn-primary my-4">Masuk</button>
                  </div>
                </form>
              </div>
            </div>
            <div class="row mt-2">
              <div class="col-6">
                <a href="" class="text-muted" data-toggle="modal" data-target="#forgetPassword"><small>Lupa Password</small></a>
              </div>
            </div>
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

    <div class="modal fade" id="forgetPassword" tabindex="-1" role="dialog" aria-labelledby="forgetPasswordLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="forgetPasswordLabel">Lupa Password</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <p class="lead font-italic text-center">"kamu sama password aja lupa, gimana sama aku?"</p>
              </div>
            </div>
            <form action="<?= BASEURL ?>login/forgetPassword" method="POST">
            <div class="form-group">
              <label for="emailforget">Email</label>
              <input type="email" class="form-control" id="emailforget" placeholder="email" name="emailforget" required>
            </div>
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary">Kirim</button>
            </div>
            </form>
          </div>
          
        </div>
      </div>
    </div>
</div>