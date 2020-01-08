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
		</ul>
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
				<li class="nav-item">
					<a class="nav-link" href="<?= BASEURL; ?>admin/home"> <i class="ni ni-tv-2 text-primary"></i>
						Halaman Admin
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="<?= BASEURL ?>admin/help_ticket">
						<i class="ni ni-planet text-blue"></i> Help Ticket
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<?= BASEURL; ?>admin/edit_user">
						<i class="ni ni-single-02 text-yellow"></i> Edit Pengguna
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link " href="./examples/rank.php">
						<i class="ni ni-bullet-list-67 text-red"></i> Delete
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./examples/login.php">
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
	<!-- content -->
	<div class="bg-gradient-success pb-9 pt-5 pt-md-8">
		<div class="container-fluid">
			<?php Alert::showMessage(); ?>
			<div class="main-content">
				<div class="container bg-white border rounded pt-3">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Status</th>
								<th scope="col">Id</th>
								<th scope="col">Email</th>
								<th scope="col">Nama</th>
								<th scope="col">Judul</th>
								<th scope="col">Jenis</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($data['ticket'] as $ticket) : ?>
								<?php if ($ticket['status'] == "Unread") {
									$colorBadge = "danger";
								} else {
									$colorBadge = "success";
								}	?>
								<tr>
									<td scope="row">
										<span class='badge badge-<?= $colorBadge ?>'><?= $ticket['status'] ?></span>
									</td>
									<td>#<?= $ticket['id_ticket'] ?></td>
									<td><?= $ticket['email'] ?></td>
									<td><?= $ticket['name'] ?></td>
									<td><?= $ticket['judul_ticket'] ?></td>
									<td><?= $ticket['jenis_ticket'] ?></td>
									<td>
										<button class="btn btn-primary btn-sm btnCheck" data-toggle="modal" data-target="#checkHelp" data-id="<?= $ticket['id_ticket'] ?>">Check</button>
									</td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="checkHelp" tabindex="-1" role="dialog" aria-labelledby="modalCheck" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modalCheck">Help</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="<?=BASEURL;?>help/setRead" method="POST">
					<input type="hidden" name="id" id="id">
					<div class="container">
						<div class="row mb-2">
							<strong>Judul :</strong>
							<p id="subject" class="ml-1"><?= $ticket['judul_ticket'] ?></p>
						</div>
						<div class="row mb-2">
							<strong>Dari :</strong>
							<p id="from" class="ml-1"><?= $ticket['email'] ?></p>
						</div>
						<div class="row mb-2">
							<strong>Jenis :</strong>
							<p id="variant" class="ml-1"><?= $ticket['jenis_ticket'] ?></p>
						</div>
						<div class="row mb-2">
							<strong>Isi : </strong>
						</div>
						<div class="row mb-3 ml-4 bg-gray p-2">
							<div class="container">
								<pre id="content"><?= $ticket['isi_ticket'] ?></pre>
							</div>
						</div>
						<div class="row mb-3 float-right">
							<button class="btn btn-primary btn-sm" type="submit"><i class="fa fa-check"></i> Read</button>
						</div>
				</form>
			</div>
		</div>
	</div>
</div>