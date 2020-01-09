<div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
  <div class="container-fluid">
    <div class="header-body">
      <div class="container row  justify-content-center pb-4">
        <h3 class="letter shadow-lg p-2 bg-white rounded">Temukan Sekarang Partner Belajar Kamu !</h3>
      </div>
      <!-- CONTENT -->
    </div>
  </div>
  <div class="container-fluid mt--7">
    <div class="row justify-content-center">
      <div class="col-xl-8 order-xl-1">
        <div class="card bg-secondary shadow">
          <div class="card-header bg-secondary border-0">
            <div class="row align-items-center">
              <div class="col-12">
                <div class="text-center">
                  <h3 class="mb-0">Data Pencarian Partner</h3>
                </div>
              </div>
            </div>
          </div>
          <div class="card-body">
            <form method="post" action="#">
              <div class="text-center">
                <h6 class="heading-small text-muted mb-4">Masukkan Data Pencarian</h6>
              </div>
              <div class="pl">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label">Mata Pelajaran terfavorit</label>
                      <select class="form-control form-control-alternative" name="mapel_tinggi">
                        <?php $i = 1;
                        foreach ($data['mapel'] as $option) {
                        ?>
                          <option value="<?= 'MP' . sprintf('%03d', $i); ?>"><?= $option['name'] ?></option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label">Filter Data Sekolah</label>
                      <select class="form-control form-control-alternative" name="tingkat_sekolah">
                        <option value="SMP">SMP (Sekolah Menengah Pertama)</option>
                        <option value="SMA">SMA (Sekolah Menengah Atas)</option>
                        <option value="SMK">SMK (Sekolah Menengah Kejuruan)</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label">Mata Pelajaran yang ingin dipelajari</label>
                      <select class="form-control form-control-alternative" name="mapel_rendah">
                        <?php $i = 1;
                        foreach ($data['mapel'] as $option) {
                        ?>
                          <option value="<?= 'MP' . sprintf('%03d', $i); ?>"><?= $option['name'] ?></option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="form-control-label">Filter Data Kelas</label>
                      <select class="form-control form-control-alternative" name="tingkat_kelas">
                        <option value="1">Kelas 1</option>
                        <option value="2">Kelas 2</option>
                        <option value="3">Kelas 3</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="text-center">
                <button type="submit" class="btn btn-primary my-4" name="submit">Cari Partner</button>
              </div>
          </div>
          <!-- Address -->
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="row justify-content-center">
    <div class='col-xl-15 order-xl-1 pt-5'>
      <div class='card bg-secondary shadow'>
        <div class='card-header bg-white border-0'>
          <div class='row align-items-center'>
            <div class='col-12'>
              <table width='760px'>
                <tbody>
                  <div class='text-center'>
                    <h3 class='mb-0'>Rekomendasi Partner Belajar Kamu</h3>
                  </div>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class='card-body'>
          <form method='post' action='#'>
            <div class='pl'>
              <div class='table-responsive'>