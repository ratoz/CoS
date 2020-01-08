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

    <!-- User -->
    <ul class="nav align-items-center d-md-none">
      <li class="nav-item dropdown">
        <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <div class="media align-items-center">
            <span class="avatar avatar-sm rounded-circle">
            <?php if (empty($data['path'])){$data['path']=PATHFOTO;}
              if (!file_exists($data['path'].$data['foto']['profilfoto'])) {
                if ($data['profil']['gender'] === "Laki-Laki") { ?>
                  <img id="changeimg" src="<?= $data['path'] . "man.svg" ?>" class="rounded-circle">
                <?php } else { ?>
                  <img id="changeimg" src="<?= $data['path']  . "girl.svg" ?>" class="rounded-circle">
                <?php } ?>

              <?php } else { ?>
                <img id="changeimg" src="<?= $data['path'].$data['foto']['profilfoto'] ?>" class="rounded-circle">
              <?php } ?>


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
          <a href="<?= BASEURL ?>logOut" class="dropdown-item">
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
            <a href="./index.html">
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
        <li class="nav-item <?php if ($data['page'] === 'dashboard') echo "active"; ?>">
          <a class=" nav-link " href="<?= BASEURL; ?>Dashboard">
          <i class="ni ni-tv-2 text-primary"></i> Beranda
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if ($data['page'] === 'caripartner') echo "active"; ?>" href="<?= BASEURL; ?>CariPartner">
            <i class="ni ni-planet text-blue"></i> Cari Partner
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if ($data['page'] === 'profile') echo "active"; ?>" href="<?= BASEURL; ?>Profile">
            <i class="ni ni-single-02 text-yellow"></i> Profil Pengguna
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if ($data['page'] === 'rank') echo "active"; ?>" href="<?= BASEURL; ?>Rank">
            <i class="ni ni-bullet-list-67 text-red"></i> Rank
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if ($data['page'] === 'about') echo "active"; ?>" href="<?= BASEURL; ?>about">
            <i class="ni ni-app text-default"></i> Tentang Website
          </a>
        </li>
         
        <li class="nav-item">
          <a class="nav-link" href="<?= BASEURL; ?>Logout">
            <i class="ni ni-key-25 text-info"></i> Keluar
          </a>
        </li>
        <!--
        <li class="nav-item">
          <a class="nav-link" href="<?= BASEURL; ?>Register">
            <i class="ni ni-circle-08 text-pink"></i> Registrasi
          </a>
        </li>
              -->
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
      <span class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" >
        <?php switch ($data['page']) {
          case 'dashboard':
            $output = "Beranda";
            break;

          case 'rank':
            $output = "Peringkat";
            break;

            case 'profile':
              $output ="Profil Saya";
              break;

              case 'caripartner':
                $output ="Cari Partner";
                break;
          
          default:
          $output = "Null";
            break;}

            if ($data['page']==='touser'){
              $output = "Profil User";
            }

            echo $output;
        ?>
      </span>
      <!-- User -->
      <ul class="navbar-nav align-items-center d-none d-md-flex">
        <li class="nav-item dropdown">
          <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <div class="media align-items-center">
              <span class="avatar avatar-sm rounded-circle">

              <?php if (empty($data['path'])){$data['path']=PATHFOTO;}
              if (!file_exists(PATHFOTO.$data['foto']['profilfoto'])) {
                if ($data['profil']['gender'] === "Laki-Laki") { ?>
                  <img id="changeimg" src="<?= $data['path'] . "man.svg" ?>" class="rounded-circle">
                <?php } else { ?>
                  <img id="changeimg" src="<?= $data['path']  . "girl.svg" ?>" class="rounded-circle">
                <?php } ?>

              <?php } else { ?>
                <img id="changeimg" src="<?= $data['path']  . $data['foto']['profilfoto'] ?>" class="rounded-circle">
              <?php } ?>

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
            <a href="<?= BASEURL ?>logOut" class="dropdown-item">
              <i class="ni ni-user-run"></i>
              <span>Keluar</span>
            </a>
          </div>
        </li>
      </ul>
    </div>
  </nav>
  <!-- End Navbar -->