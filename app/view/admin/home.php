  <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    <div class="container-fluid">
      <!-- Toggler -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- Brand -->
      <h2>
        <center>
          Circle Of Science
        </center>
      </h2>
      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main">
        <!-- Collapse header -->
        <div class="navbar-collapse-header d-md-none">
          <div class="row">
            <div class="col-6 collapse-brand">
              <a href="./index.php">
                <img src="./assets/img/brand/blue.png">
              </a>
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
          <li class="nav-item" class="active">
            <a class="nav-link active" href="<?= BASEURL ?>admin/home"> <i class="ni ni-tv-2 text-primary"></i> Halaman Admin
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="<?= BASEURL ?>admin/help">
              <i class="ni ni-planet text-blue"></i> Help Ticket
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= BASEURL ?>admin/edit_user">
              <i class="ni ni-single-02 text-yellow"></i> Edit Pengguna
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?=BASEURL?>admin">
              <i class="ni ni-key-25 text-info"></i> Logout
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
        <p class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block">Halaman Admin</p>
        <!-- User -->
      </div>
    </nav>
    <!-- End Navbar -->
    <!-- Header -->
    <div class="header bg-gradient-success pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <!-- CONTENT -->
        <div class="container">
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
              <h2 class="text" style="color: white">Cari User</h2>
              <form action="" method="post">
                <input class="form-control" type="text" placeholder="cari disini .." name="cari"> <br>
                <input class="form-control" type="submit" name="ss" value="Cari"> <br>
              </form>
              <div class="table-responsive">
                <table class="table table-hover ">
                  <tr>
                    <th>No</th>
                    <th>Id User</th>
                    <th>Nama User</th>
                    <th>Email</th>
                    <th>Phone</th>
                  </tr>
                  <?php
                  if (isset($data['user'])) {
                    $no = 1;
                    foreach ($data['user'] as $user) {
                      echo "
                            <tr>
                              <td>" . $no++ . "</td>
                              <td>" . $user['id_udata'] . "</td>
                              <td>" . $user['name'] . "</td>
                              <td>" . $user['email'] . "</td>
                              <td>" . $user['phone'] . "</td>
                            </tr>
                          ";
                    }
                  } else {
                    echo $data['user'];
                  }
                  ?>
                </table>
              </div>
            </div>
            <div class="col-md-2"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>