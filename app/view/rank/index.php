<!-- End Navbar -->
<!-- Header -->

<div class="header bg-gradient-primary pb-4 pt-5 pt-md-6">
	<div class="container-fluid">

		<div class="container-fluid text-center d-flex justify-content-center">
				<h3 class="letter shadow-lg p-2 bg-white rounded mb-3">Top Rank User</h3>
		</div>

		<div class="container-fluid">

			<div class="form-search-wrap bg-default rounded p-3">
				<!-- data-aos="fade-up" data-aos-delay="100" -->

				<form class="form-inline form-group" action="<?= BASEURL ?>Rank/searchData" method="post">
					<div class="form-group mr-sm-3 mb-2 col-12">
						<input type="text" class="form-control col-7" id="name" name="kabupaten" placeholder="Nama Kabupaten" value="">
					</div>
					<div class="col-5 d-flex d-inline-block">
						<ul class="list-inline">
						<li class="list-inline-item">
						<input type="radio" id="radio_semua" class="gender" name="gender" value="semua" checked>
						</li>
						<li class="list-inline-item">
						<label for="radio_semua" class="text-white">Semua</label>
						</li>
						<li class="list-inline-item">
						<input type="radio" id="radio_male" class="gender" name="gender" value="male">
						</li>
						<li class="list-inline-item">
						<label for="radio_male" class="text-white">Laki-Laki</label>
						</li>
						<li class="list-inline-item">
						<input type="radio" id="radio_female"  class="gender" name="gender" value="female">
						</li>
						<li class="list-inline-item">
						<label for="radio_female" class="text-white">Perempuan</label>
						</li>
						</ul>
					</div>
					<button type="submit" class="btn btn-primary mb-2 col-2" id="search"> Search </button>
				</form>
			</div>
		</div>
		<br>

		<div class="container-fluid">
			<div class="row mt-5">
				<div class="col">
					<div class="card bg-default shadow">
						<div class="card-header bg-transparent border-0">
							<h3 class="text-white mb-0">Pencarian</h3>
						</div>
						<div class="table-responsive">
							<TABLE id="rankTable" class="table align-items-center table-dark table-flush">

								<?php
								if (!isset($_POST['search'])) { ?>
									<thead class="thead-dark">
										<tr>
											<th scope="col">Nama</th>
											<th scope="col">Tingkat</th>
											<th scope="col">Status</th>
											<th scope="col">Kelas</th>
											<th scope="col">Poin</th>
										</tr>
									</thead>
									<?php if (empty($data['search'])) { ?>
										<tr>
											<td colspan="5">
												<h3 class="text-danger text-center">Data Kosong atau Belum Dicari</h3>
											</td>
										</tr>
										<?php } else {
										foreach ($data['search'] as $value) {
											$i = 0; ?>
											<?php if ($value['status'] == 'Active') { ?>
												<?php $colorBadge = 'success'; ?>
											<?php } else { ?>
												<?php $colorBadge = 'danger'; ?>
											<?php } ?>
											<tbody>
												<tr>
													<th scope="row">
														<div class="media align-items-center">
															<a id="toptab<?= $i ?>" href="<?= BASEURL . "Profile/toUser/" . $value['id_udata'] ?>" class="avatar rounded-circle mr-3">
																<img alt="" src="<?= $value['profilfoto'] ?> ">
															</a>
															<div class="media-body">
																<a href="<?= BASEURL . "Profile/toUser/" . $value['id_udata'] ?>" class="mb-0 text-sm"><?= $value["name"] ?></a>
															</div>
														</div>
													</th>
													<td>
														<!-- tingkat -->
														<?= $value['tingkat'] ?>
													</td>
													<td>
														<span class='badge badge-<?= $colorBadge ?> bg-white'><?= $value['status'] ?></span>
													</td>
													<td>
														<!-- kelas -->
														<?= $value['kelas'] ?>
													</td>
													<td>
														<div class="d-flex align-items-center">
															<span class="mr-2"><?= $value['poin'] ?></span>
															<div>
																<div class="progress">
																	<div class="progress-bar bg-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
																</div>
															</div>
														</div>
													</td>
												</tr>
												<?php $i++; ?>
										<?php }
									} ?>
									<?php }
									?>
							</TABLE>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="container-fluid">

			<!-- Dark table -->
			<div class="row mt-5">
				<div class="col">
					<div class="card bg-default shadow">
						<div class="card-header bg-transparent border-0">
							<h3 class="text-white mb-0">Top Rank User</h3>
						</div>
						<div class="table-responsive">
							<table class="table align-items-center table-dark table-flush">
								<thead class="thead-dark">
									<tr>
										<th scope="col">Nama</th>
										<th scope="col">Tingkat</th>
										<th scope="col">Status</th>
										<th scope="col">Kelas</th>
										<th scope="col">Poin</th>
									</tr>
								</thead>
								<?php if ($data['list'] > 0) {
									$i = 0; ?>
									<?php foreach ($data['list'] as $list) : ?>
										<?php if ($list['status'] == 'Active') { ?>
											<?php $colorBadge = 'success'; ?>
										<?php } else { ?>
											<?php $colorBadge = 'danger'; ?>
										<?php } ?>
										<tbody>
											<tr>
												<th scope="row">
													<div class="media align-items-center">
														<a id="toptab<?= $i ?>" href="<?= BASEURL . "Profile/toUser/" . $list['id_udata'] ?>" class="avatar rounded-circle mr-3">
															<img alt="" src="<?= $list['profilfoto'] ?> ">
														</a>
														<div class="media-body">
															<a href="<?= BASEURL . "Profile/toUser/" . $list['id_udata'] ?>" class="mb-0 text-sm"><?= $list["name"] ?></a>
														</div>
													</div>
												</th>
												<td>
													<!-- tingkat -->
													<?= $list['tingkat'] ?>
												</td>
												<td>
													<span class='badge badge-<?= $colorBadge ?> bg-white'><?= $list['status'] ?></span>
												</td>
												<td>
													<!-- kelas -->
													<?= $list['kelas'] ?>
												</td>
												<td>
													<div class="d-flex align-items-center">
														<span class="mr-2"><?= $list['poin'] ?></span>
														<div>
															<div class="progress">
																<div class="progress-bar bg-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
															</div>
														</div>
													</div>
												</td>
											</tr>
										<?php $i++;
									endforeach; ?>
									<?php } else { ?>
										<tr>
											<td colspan="5">
												<h3 class="text-danger text-center">Data Kosong</h3>
											</td>
										</tr>
									<?php } ?>
									</tr>
										</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>