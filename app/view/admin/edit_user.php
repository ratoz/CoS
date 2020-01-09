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
  <!-- Header -->
  <div class="bg-gradient-success pb-9 pt-5 pt-md-8">
    <div class="container-fluid">
      <?php Alert::showMessage(); ?>
      <div class="main-content">
        <!-- search -->
        <div class="search pt-3 pb-3">
          <form action="<?= BASEURL; ?>admin/search" class="form-group" method="POST">
            <div class="container pt-3">
              <div class="row">
                <div class="col-6">
                  <input class="form-control" type="text" name="keyword" placeholder="Search User">
                </div>
                <div class="col-1">
                  <button class="btn btn-primary" type="submit">
                    <i class="fa fa-search"></i>
                  </button>
                </div>
              </div>
            </div>
          </form>
        </div>
        <!-- list user -->
        <div class="container bg-white rounded border py-3">
          <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Status</th>
                <th scope="col">Id User</th>
                <th scope="col">Username</th>
                <th scope="col">Email</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
              <?php if (isset($data['user'])) { ?>
                <?php foreach ($data['user'] as $user) : ?>
                  <?php if ($user['status'] == 'Active') { ?>
                    <?php $colorBadge = 'success'; ?>
                  <?php } else { ?>
                    <?php $colorBadge = 'danger'; ?>
                  <?php } ?>
                  <tr>
                    <td scope="row">
                      <span class='badge badge-<?= $colorBadge ?>'><?= $user['status'] ?></span>
                    </td>
                    <td>#<?= $user['id_udata'] ?></td>
                    <td><?= $user['username'] ?></td>
                    <td><?= $user['email'] ?></td>
                    <td>
                      <button class='btn btn-primary btn-sm btnEdit' data-toggle='modal' data-target='#editForm' data-id="<?= $user['id_udata'] ?>">
                        Edit
                      </button>
                      <button class='btn btn-primary btn-sm btnDel' data-toggle='modal' data-target='#deleteModal' data-id="<?= $user['id_udata'] ?>">
                        Hapus
                      </button>
                    </td>
                  </tr>
                <?php endforeach; ?>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- MODAL Edit-->
<div class="modal fade" id="editForm" tabindex="-1" role="dialog" aria-labelledby="modalEdit" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalEdit">Edit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?= BASEURL; ?>admin/editData" method="POST">
          <div class="form-group">
            <input type="hidden" name="id" id="id">
            <div class="row text-center">
              <div class="col-4">
                <label for="select">Jenis</label>
              </div>
              <div class="col-8">
                <label for="value">input</label>
              </div>
            </div>
            <div class="row mb-3">
              <div class="col-4">
                <select class="custom-select" id="select" name="selectType">
                  <option value="poin" selected>Poin</option>
                  <option value="status">Status</option>
                </select>
              </div>
              <div class="col-8">
                <input type="text" class="form-control" name="valueText" id="valueText" autocomplete="true">
                <select class="custom-select" id="valueSelect" name="valueSelect" hidden>
                  <option value="Active" selected>Aktivasi</option>
                  <option value="Temp Ban">Ban Sementara</option>
                  <option value="Perm Ban">Ban Permanen</option>
                </select>
              </div>
            </div>
            <label for="reason">Alasan</label>
            <textarea name="reason" id="reason" class="form-control"></textarea>
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </div>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal Delete -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="modalEdit" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalEdit">Delete</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="container">
          <div class="col-12 text-center">
            <p>klik tombol dibawah untuk lanjut</p>
          </div>
          <form action="<?= BASEURL ?>admin/deleteUser" method="POST">
            <input type="hidden" name="delIdUdata" id="deleteIdUdata">
            <input type="hidden" name="delIdUser" id="deleteIdUser">
            <button type="submit" class="btn btn-danger w-100">Delete</button>
          </form>
        </div>
      </div>
    </div>
  </div>