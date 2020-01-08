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
      <div class="separator separator-bottom separator-skew zindex-100">
        <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
        </svg>
      </div>
    </div>
    <!-- Page content -->
    <div class="container w-50 bg-white border rounded">
    <?php Alert::showMessage(); ?>
      <div class="container mt-4 text-center">
        <h1>Bantuan</h1>
        <p>Mohon isi form ticket berikut</p>
      </div>
      <form action="<?= BASEURL; ?>help/submitTicket" method="POST" class="p-1 p-lg-2">
        <div class="container mb-2 mt-4">
          <div class="row mb-2">
            <div class="col-6">
              <label for="title_ticket">Nama</label>
              <input type="text" name="name_ticket" id="name_ticket" class="form-control" require>
            </div>
            <div class="col-6">
              <label for="email_ticket">Email</label>
              <input type="email" name="email_ticket" id="email_ticket" class="form-control" placeholder="email@provider.com" require>
            </div>
          </div>
          <div class="row mb-2">
            <div class="col-12 col-lg-6">
              <label for="title_ticket">Judul</label>
              <input type="text" name="title_ticket" id="title_ticket" class="form-control" require>
            </div>
          </div>
          <div class="row mb-2">
            <div class="col-12 col-lg-6">
              <label for="category_ticket">Category</label>
              <select name="category_ticket" id="category_ticket" class="form-control w-75" require>
                <option disabled>Pilih category</option>
                <option value="Report User" selected>Report User</option>
                <option value="Report Bug">Report Bug</option>
                <option value="Others">Others</option>
              </select>
            </div>
          </div>
          <div class="row mb-6">
            <div class="col-12 ">
              <label for="content_ticket">Isi</label>
              <textarea name="content_ticket" id="content_ticket" rows="10" class="form-control w-100" require></textarea>
            </div>
          </div>
          <div class="contaier-fluid d-flex justify-content-center">
            <button type="submit" class="btn btn-primary" id="submit_ticket">Submit Ticket</button>
          </div>
        </div>
      </form>
    </div>
    <!-- Footer -->
    <div class="footer">
      <div class="container text-center">
        <p>&copy; Copyright Circle of Science</p>
      </div>
    </div>
  </div>
  <!-- Modal -->
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