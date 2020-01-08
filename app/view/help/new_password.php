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
                            <h1 class="text-white">Ganti Password</h1>
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
        <div class="container border rounded bg-white w-25">
            <div class="row">
                <div class="col-12 text-center mt-4">
                    <p>Masukkan Password Baru anda</p>
                </div>
            </div>
            <?php Alert::showMessage();?>
            <form action="<?= BASEURL; ?>help/newPassword" method="POST" class="form-group">
                <div class="container">
                    <div class="row mt-2">
                        <div class="col-12">
                            <label for="password">Password Baru</label>
                            <input type="password" class="form-control" name="password">
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <label for="reTypePassword">Masukkan kembali password</label>
                            <input type="password" class="form-control" name="reTypePassword">
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-2 offset-7">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                        </div>
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
</div>