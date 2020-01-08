<div class="header bg-gradient-success pb-4 pt-5 pt-md-6">

  <div class="container row justify-content-center pb-4">
    <h1 class="ml14 mb-3">
      <span class="text-wrapper">
        <h3 class="letter shadow-lg p-2 bg-white rounded">Temukan Teman Belajar Terdekat Anda</h3>
        <span class="line"></span>
      </span>
    </h1>
  </div>


  <div class="container-fluid">
    <div class="form-search-wrap" data-aos="fade-up" data-aos-delay="200">
      <div class="container">
        <form action="" method="post">
          <div class="row align-items-center">
            <div class="col-lg-12s mb-4 mb-xl-0 col-xl-3">
              <div class="wrap-icon">
                <input type="text" id="name" name="name" placeholder="Nama Kabupaten" value="">
                <span class="icon icon-room"></span>
              </div>
            </div>
            <div class="col-lg-12 col-xl-2" style="margin-left: 100px">
              <input type="button" class="btn btn-primary btn-block rounded" id="search" name="search" value="Search">
            </div>
          </div>
        </form>
      </div>
    </div>
    <br>
    <div class="container">
      <TABLE class="table table-striped table-resposive table-hover table-dark" id="tableCari">
      </TABLE>
    </div>
    <br>
    <br>
    <br>
    <div class="container">
      <div class="table-responsive">
        <Table class="table align-items-center table-dark table-flush" id='partnerTable'>
          <tr>
            <th>Nama</th>
            <th>Sekolah</th>
            <th>Kelas</th>
            <th>Tingkat</th>
            <th>No Hp</th>
            <th>Email</th>
            <th>Action</th>
          </tr>
          <?= $data['inittable'] ?>
        </TABLE>
      </div>
    </div>
    <br>
    <br>

    <div class="site-section">
      <div class="container justify-content-center">
        <div class="jumbotron jumbotron-fluid">
          <div class="container">
            <h1 class="display-4">Tentang Kami</h1>
            <p class="lead">Coba Website Kami, Dijamin Top.</p>
          </div>
        </div>
        <div class="row justify-content-center mb-5">
          <div class="col-md-5 col-lg-4 mb-4 mb-lg-4">
            <div class="card" style="width: 15rem;">
              <img class="card-img-top" src="assets/img/person_5.jpg" alt="Card image cap">
              <div class="card-body" align="center">
                <h3 class="card-title">Lyla</h3>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
          </div>
          <div class="col-md-5 col-lg-4 mb-4 mb-lg-4">
            <div class="card" style="width: 15rem;">
              <img class="card-img-top" src="assets/img/person_5.jpg" alt="Card image cap">
              <div class="card-body" align="center">
                <h3 class="card-title">Natalia</h3>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
          </div>
          <div class="col-md-5 col-lg-4 mb-4 mb-lg-4">
            <div class="card" style="width: 15rem;">
              <img class="card-img-top" src="assets/img/person_5.jpg" alt="Card image cap">
              <div class="card-body" align="center">
                <h3 class="card-title">Selena</h3>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
          </div>

          <div class="justify-content-center col-md-5 col-lg-3">
            <a href="#" class="btn btn-primary rounded py-2 px-4 text-white">Tentang Website</a>
          </div>
        </div>
      </div>
    </div>

    <!-- div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(assets/img/colorback.jpg); background-size: cover; background-position: center top;" -->
  </div>
</div>
<!-- Footer -->
</div>
</div>

