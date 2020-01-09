
  <!-- Header -->
  <div id="div-header">
    <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(<?= PATHFOTO . $data['profil']['profilfoto'] ?>); background-size: cover; background-position: center top;">
      <!-- Mask -->
      <span class="mask bg-gradient-default opacity-8"></span>
      <!-- Header container -->
      <div class="container-fluid d-flex align-items-center">
        <div class="row">
          <div class="col-lg-7 col-md-10">
            <h1 class="display-2 text-white">Hello</h1>
            <h1 class="text-white"><?= $data['profil']['name'] ?></h1>
            <p class="text-white mt-0 mb-5">example</p>
            <button id="edtprf" class="btn btn-info">Edit profile</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Page content -->
  <div class="container-fluid mt--7">
    <div class="row">
      <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
        <div class="card card-profile shadow">
          <div class="row justify-content-center">
            <div class="col-lg-3 order-lg-2 ">
              <div id="eventphoto" class="card-profile-image">
                <!-- Profile Picture -->
                <img id="changeimg" src="<?= PATHFOTO . $data['profil']['profilfoto'] ?>" class="rounded-circle">
                <div id="changephoto" class=" d-flex justify-content-center" style="opacity:0">
                  <button id="btn-photo" class="btn btn-sm btn-default text-center mt-4" data-toggle="modal" data-target="#alertupdate">Change Photo</button>
                  <button id="btn-photodisable" class="btn btn-sm btn-default text-center mt-4" style="display: none">Change Photo</button>
                </div>
              </div>
            </div>
          </div>
          <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
            <div class="d-flex justify-content-between">
              <a href="#" class="btn btn-sm btn-default float-right">Pesan</a>
            </div>
          </div>
          <div class="card-body pt-0 pt-md-4">
            <div class="row">
              <div class="col">
                <div class="card-profile-stats d-flex justify-content-center mt-md-3">
                  <div>
                    <span class="heading">0</span>
                    <span class="description">Teman</span>
                  </div>
                  <div>
                    <span class="heading">0</span>
                    <span class="description">Foto</span>
                  </div>
                  <div>
                    <span class="heading">0</span>
                    <span class="description">Komentar</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="text-center">
              <h3>
                <?= $data['profil']['name'] ?><span class="font-weight-light">, <?= $data['profil']['age'] ?></span>
              </h3>
              <div class="h5 font-weight-300">
                <i class="ni location_pin mr-2"></i><?= $data['profil']['KabupatenName'] . ", " . $data['profil']['ProvinsiName'] ?>
              </div>
              <div class="h5 mt-4">
                <i class="ni business_briefcase-24 mr-2"></i><?= $data['profil']['poin'] . " Poin" ?>
              </div>
              <div>
                <i class="ni education_hat mr-2"></i>Peringkat : <?= $data['profil']['PeringkatName'] ?>
              </div>
              <hr class="my-4" />
              <!-- Start Ratings -->
              <?php if ($data['edit']==false){ ?>
              <div class="">
                <div class="rate">
                  <div id="1" class="btn-1 rate-btn"></div>
                  <div id="2" class="btn-2 rate-btn"></div>
                  <div id="3" class="btn-3 rate-btn"></div>
                  <div id="4" class="btn-4 rate-btn"></div>
                  <div id="5" class="btn-5 rate-btn"></div>
                </div>
                <br>
                <div class="box-result">
                  <div class="result-container">
                    <div class="rate-bg" style="width:<?php echo $data['profil']['rating']['rate_bg']; ?>"></div>
                    <div class="rate-stars"></div>
                  </div>
                  <p style="margin:5px 0px; font-size:16px; text-align:center">Rated <strong><?php echo substr($data['profil']['rating']['rate_value'], 0, 3); ?></strong> out of <?php echo $data['profil']['rating']['rate_times']; ?> Review(s)</p>
                </div>
              </div>
              <?php } ?>

              <!-- End Ratings -->
              <a href="#">Tampilkan Lebih Banyak</a>
            </div>
          </div>
        </div>
      </div>
      <div id="div-formprofile" class="col-xl-8 order-xl-1">
        <div class="card bg-secondary shadow">
          <div class="card-header bg-white border-0">
            <div class="row align-items-center">
              <div class="col-8">
                <h3 class="mb-0">Akun Saya</h3>
              </div>
              <div class="col-4 text-right">
                <a href="#!" class="btn btn-sm btn-primary">Pengaturan</a>
              </div>
            </div>
          </div>
          <div class="card-body">
            <form id='form-profile' action="<?= BASEURL ?>Profile/updateDataPengguna" method="POST">
              <h6 class="heading-small text-muted mb-4">Informasi Pengguna</h6>
              <div class="pl-lg-4">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="form-control-label" for="input-name">Nama</label>
                      <input type="text" id="input-name1" name='name' class="form-control form-control-alternative" placeholder="Nama" value="<?= $data['profil']['name'] ?>" disabled required>
                      <span class="form-control-label text-warning" id="error-name"></span>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="form-control-label" for="input-email">Alamat Email</label>
                      <input type="email" id="input-email" name='email' class="form-control form-control-alternative" placeholder="user@example.com" value="<?= $data['profil']['email'] ?>" disabled required>
                      <span class="form-control-label text-warning" id="error-email"></span>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-nisn">NISN</label>
                      <input type="text" id="input-nisn" name='nisn' class="form-control form-control-alternative" placeholder="NISN" value="<?= $data['profil']['nisn'] ?>" disabled required>
                      <span class="form-control-label text-warning" id="error-nisn"></span>
                    </div>
                  </div>
                  <div id="div-gendertext" class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-gender">Gender</label>
                      <input type="text" id="input-gender" class="form-control form-control-alternative" placeholder="Gender" value="<?= $data['profil']['gender'] ?>" disabled>
                    </div>
                  </div>
                  <div id='div-genderradio' class="col-lg-6" style="display: none">
                    <div class="form-group">
                      <label class="form-control-label" for="input-gender1">Gender</label><br>
                      <input type="radio" id="gender-laki" name='gender' class="form-control-input" value="laki-laki" checked> Laki-Laki<br>
                      <input type="radio" id="gender-perempuan" name='gender' class="form-control-input" value="perempuan" checked> Perempuan
                    </div>
                  </div>
                </div>
              </div>
              <hr class="my-4" />
              <!-- Address -->
              <h6 class="heading-small text-muted mb-4">Informasi Kontak</h6>
              <div class="pl-lg-4">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="form-control-label" for="input-address">Alamat</label>
                      <input id="input-address" name='address' class="form-control form-control-alternative" placeholder="Alamat Rumah" value="<?= $data['profil']['alamat'] ?>" type="text" disabled>
                    </div>
                  </div>
                </div>
                <div id="finput" class="row">
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-kabupaten">Kabupaten</label>
                      <input type="text" id="input-kabupaten" class="form-control form-control-alternative" placeholder="Kabupaten" value="<?= $data['profil']['KabupatenName'] ?>" disabled>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="input-provinsi">Provinsi</label>
                      <input type="text" id="input-provinsi" class="form-control form-control-alternative" placeholder="Provinsi" value="<?= $data['profil']['ProvinsiName'] ?>" disabled>
                    </div>
                  </div>
                </div>
                <!-- combobox -->
                <div id="fcombobox" class="row" style="display:none">
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label" for="select-provinsi">Provinsi</label>
                      <select id="provselect" name='provinsi' class="form-control form-control-alternative" data-toggle="select" title="Simple select" data-live-search="true" data-live-search-placeholder="Search ..." placeholder="Pilih provinsi" name="select-provinsi">
                        <?= $data['profil']['prov']; ?>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div id="kabload" class="form-group">
                      <label class="form-control-label" for="select-kabupaten">Kabupaten/Kota</label>
                      <select id="kabsel" name='kabupaten' class="form-control form-control-alternative" data-toggle="select" placeholder="Pilih provinsi terlebih dahulu" name="select-kabupaten">
                        <option value="none" selected>Pilih Provinsi terlebih dahulu</option>
                      </select>
                    </div>

                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="form-control-label" for="input-sekolah">Sekolah</label>
                      <input id="input-sekolah" name='sekolah' class="form-control form-control-alternative" placeholder="Sekolah" value="<?= $data['profil']['sekolah'] ?>" type="text" disabled>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="form-control-label" for="input-phone">Nomor Telepon</label>
                      <input id="input-phone" name='phone' class="form-control form-control-alternative" placeholder="Nomor Telepon" value="<?= $data['profil']['phone'] ?>" type="text" disabled>
                      <span class="form-control-label text-warning" id="error-phone"></span>
                    </div>
                  </div>
                </div>
              </div>
              <hr class="my-4" />
              <!-- Description -->
              <h6 class="heading-small text-muted mb-4">Verifikasi Berkas</h6>
              <div class="pl-lg-4">
                <div id="uploadfile" class="row" style="display:none">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="form-control-label" for="input-rapot">File Rapot</label>
                      <input id="input_rapot" class="form-control form-control-alternative" type="file">
                      <br>
                      <p class="text-muted">Catatan: Verifikasi berkas memerlukan waktu 1-3 hari waktu kerja. Pastikan dimensi gambar harus sama.</p>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="d-flex justify-content-end">
                      <button id="acceptupdate" type="button" class="btn btn-success" data-toggle="modal" data-target="#alertupdate">Accept</button>
                      <button id="cancelupdate" type="button" class="btn btn-danger">Cancel</button>
                      <input type="submit" id="submit-form" style="display:none">
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="d-flex justify-content-end">
                      <span class="form-control-label text-warning" id="error-form"></span>
                    </div>
                  </div>
                </div>
                <div id="verifiedstatus" class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <div class="d-flex justify-content-center">
                        <i class="fa fa-times fa-5x text-danger" aria-hidden="true"></i>
                      </div>
                      <h4 class="text-center">Akun anda belum terverifikasi. Mohon mengupload rapot sekolah anda di Edit Profil<h4>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="alertupdate" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="alertupdatetitle">Warning</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p id="alertdesc"></p>
      </div>
      <div class="modal-footer">
        <form action="<?= BASEURL ?>Profile/updateDataFoto" method="POST" enctype="multipart/form-data">
          <div id="div-uploadfoto" class="form-group">
            <label class="form-control-label" for="input-foto">Ganti Foto Profil</label>
            <input id="input-foto" class="form-control form-control-alternative" name="image" type="file">
            <br>
            <p class="text-muted">Catatan: Pastikan dimensi gambar mempunyai ukuran yang sama. Batas ukuran file gambar 1 Mb.</p>
          </div>
          <label class="btn btn-secondary" data-dismiss="modal">Close</label>
          <label id="updateacc" for="submit-form" tabindex="0" class="btn btn-primary">Save Changes</label>
          <input id="updatefoto" type="submit" value="Accept" class="btn btn-primary" name="submit" style="display:none">
        </form>
      </div>
    </div>
  </div>
</div>