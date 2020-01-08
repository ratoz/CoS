<div class="body bg-gradient-cyan pb-8 pt-md-5">
<div class="main-content">
  <!-- search -->
  <div class="search pt-3 pb-3">
    <div class="container pt-3">
      <div class="row">
        <div class="col-6">
          <form action="<?=BASEURL;?>Admin/search" class="form-group">
            <input class="form-control" type="text" placeholder="Search User">
          </form>
        </div>
        <div class="col-1">
          <button class="btn btn-primary" type="submit">
            <i class="fa fa-search"></i>
          </button>
        </div>
      </div>
    </div>
  </div>
  <!-- list user -->
  <div class="container">
    <div class="alert alert-white">
      <div class="row ">
        <div class="col-1">
          id_user
        </div>
        <div class="col-3">
          name
        </div>
        <div class="col-2">
          email
        </div>
        <div class="col-2"></div>
        <div class="col-2 offset-2 text-right">
          <button class="btn btn-primary btn-sm" type="submit">
            <i class="fa fa-bicycle"></i>
          </button>
          <button class="btn btn-primary btn-sm" type="submit">
            <i class="fa fa-times"></i>
          </button> 
        </div>
      </div>
    </div>
  </div>
</div>
</div>
