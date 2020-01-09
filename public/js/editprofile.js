$(document).ready(function () {
  $('input').prop('disabled', true);
  $('body').scrollTo(0, 0);
  //$('#acceptupdate').prop('disabled', true);
  $.ajax({
    url: 'http://localhost/cos_mvc/public/Profile/getAllData',
    method: "POST",
    dataType: "JSON",
    success: function (data) {
      $('#input-name1').val(data.name);
      $('#input-email').val(data.email);
      $('#input-nisn').val(data.nisn);
      $('#input-gender').val(data.gender);
      $('#input-email').val(data.email);
      $('#input-address').val(data.alamat);
      $('#input-kabupaten').val(data.KabupatenName);
      $('#input-provinsi').val(data.ProvinsiName);
      $('#input-sekolah').val(data.sekolah);
    }
  });


  $('#div-formprofile').on('change', '#provselect', function (e) {
    e.preventDefault();
    var optionText = $("#provselect option:selected").val();
    $.ajax({
      url: 'http://localhost/cos_mvc/public/Profile/getKab',
      data: { id: optionText, mode:'change' },
      method: "POST",
      dataType: "html",
      success: function (data) {
        console.log(data);
        $('#kabsel').html(data);
      }
    });
  });

  $('#div-formprofile').on('click', '#cancelupdate', function (e) {
    e.preventDefault();
    $.ajax({
      url: 'http://localhost/cos_mvc/public/Profile/getAllData',
      method: "POST",
      dataType: "JSON",
      success: function (data) {
        $('#input-name1').val(data.name);
        $('#input-email').val(data.email);
        $('#input-nisn').val(data.nisn);
        $('#input-gender').val(data.gender);
        $('#input-email').val(data.email);
        $('#input-address').val(data.alamat);
        $('#input-kabupaten').val(data.KabupatenName);
        $('#input-provinsi').val(data.ProvinsiName);
        $('#input-sekolah').val(data.sekolah);
      }
    });
  });

  $('#div-formprofile').on('click', "#acceptupdate", function (e) {
    e.preventDefault();
    $("#notifsure").show();
    $("#div-uploadfoto").hide();
    $("#alertdesc").text("Are you sure to update data of your profile?");
    $("#updateacc").show();
    $("#updatefoto").hide();
  });

  $("#edtprf").click(function () {
    $.ajax({
      url: 'http://localhost/cos_mvc/public/Profile/getKab',
      data: { mode:'edit' },
      method: "POST",
      dataType: "html",
      success: function (data) {
        console.log(data);
        $('#kabsel').html(data);
      }
    });
    $.ajax({
      url: 'http://localhost/cos_mvc/public/Profile/getAllData',

      method: "POST",
      dataType: "JSON",
      success: function (data) {
        console.log(data);
        if (data.gender=="Laki-Laki"){
          $('#gender-laki').attr('checked','checked');
          $('#gender-laki').prop('checked',true);
          $('#gender-perempuan').prop('checked',false);
        }
        else{
          $('#gender-perempuan').attr('checked','checked');
          $('#gender-perempuan').prop('checked',true);
          $('#gender-laki').prop('checked',false);
        }
        $('#input-name1').val(data.name);
        $('#input-email').val(data.email);
        $('#input-nisn').val(data.nisn);
        $('#input-email').val(data.email);
        $('#input-address').val(data.alamat);
        $('#input-sekolah').val(data.sekolah);
        $("#provselect option[value='"+data.id_prov+"']").attr('selected','selected');
      }
    });
    $('#error-name').html('*Wajib');
    $('#error-email').html('*Wajib');
    $('#error-nisn').html('*Wajib');
    $('#div-gendertext').hide();
    $('#div-genderradio').show();
    $('#btn-photodisable').show();
    $('#btn-photo').hide();
    $('input').prop('disabled', false);
    $('#verifiedstatus').hide();
    $('#finput').hide();
    $('#uploadfile').show();
    $('#fcombobox').show();
    $('body').scrollTo($('#input-name1'), 1000, { offset: -200 });
    $("#input-name1").select().focus();
    //$('#acceptupdate').prop('disabled', true);
  });

  $("#cancelupdate").click(function () {
    $('#error-name').html('');
    $('#error-email').html('');
    $('#error-nisn').html('');
    $('#error-kabupaten').html('');
    $('#div-genderradio').hide();
    $('#div-gendertext').show();
    $('#btn-photodisable').hide();
    $('#btn-photo').show();
    $('body').scrollTo(0, 500);
    $('input').prop('disabled', true);
    $('#uploadfile').hide();
    $('#fcombobox').hide();
    $('#verifiedstatus').show();
    $('#finput').show();
  });

  $("#acceptupdate").click(function () {
    $("#notifsure").show();
    $("#div-uploadfoto").hide();
    $("#alertdesc").text("Are you sure to update data of your profile?");
    $("#updateacc").show();
    $("#updatefoto").hide();
  });

  $("#eventphoto").hover(function () {
    $("#changephoto").animate({
      opacity: 1
    }, 100);
    $("#changeimg").animate({
      opacity: 0.8
    }, 100);
  }, function () {
    $("#changephoto").animate({
      opacity: 0
    }, 100)
    $("#changeimg").animate({
      opacity: 1
    }, 100)
  });

  $("#btn-photo").click(function () {
    $("#input-foto").prop("disabled", false);
    $("#notifsure").show();
    $("#alertdesc").text("Change your photo in bottom of this.");
    $("#updateacc").hide();
    $("#div-uploadfoto").show();
    $("#updatefoto").show();
    $("#updatefoto").prop('disabled',false);
  });

  $("#btn-photodisable").click(function () {
    alert('Tidak bisa mengganti foto ketika dalam mode edit profil!')
  });

  //VALIDASI FORM
  $("#form-profile input").on('change', function (e) {
    var validForm = true;
    var temp;

    temp = $('#input-name1').val();
    if ($('#input-name1').val() == '') {
      validForm = false;
      $('#input-name1').addClass('is-invalid');
      $('#error-name').html('*Nama belum terisi!');
    }
    else if (temp.length < 3) {
      validForm = false;
      $('#error-name').html('*Nama tidak melebihi 2 karakter!');
    }
    else {
      $('#input-name1').removeClass('is-invalid');
      $('#error-name').html('*Wajib');
    }
    temp = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
    if ($('#input-email').val() == '') {
      validForm = false;
      $('#input-email').addClass('is-invalid');
      $('#error-email').html('*E-Mail belum terisi!');
    }
    else if (!temp.test($('#input-email').val())) {
      validForm = false;
      $('#input-email').addClass('is-invalid');
      $('#error-email').html('*E-Mail dengan bentuk yang aneh!');
    }
    else {
      $('#input-email').removeClass('is-invalid');
      $('#error-email').html('*Wajib');
    }

    if ($('#input-nisn').val() == '') {
      validForm = false;
      $('#input-nisn').addClass('is-invalid');
      $('#error-nisn').html('*NISN belum terisi!');
    }
    else {
      $('#input-nisn').removeClass('is-invalid');
      $('#error-nisn').html('*Wajib');
    }

    if ($('#input-address').val()==''){
      $.ajax({
        url: 'http://localhost/cos_mvc/public/Profile/getAllData',
        method: "POST",
        dataType: "JSON",
        success: function (data) {
          $('#input-address').val(data.alamat);
        }
      });
    }
    if ($('#input-sekolah').val()==''){
      $.ajax({
        url: 'http://localhost/cos_mvc/public/Profile/getAllData',
        method: "POST",
        dataType: "JSON",
        success: function (data) {
          $('#input-sekolah').val(data.sekolah);
        }
      });
    }
    if ($('#input-phone').val()==''){
      $.ajax({
        url: 'http://localhost/cos_mvc/public/Profile/getAllData',
        method: "POST",
        dataType: "JSON",
        success: function (data) {
          $('#input-phone').val(data.phone);
        }
      });
    }

    if (validForm == false) {
      $('#acceptupdate').prop('disabled', true);
      $('#error-form').html('Tombol tidak aktif dikarenakan terdapat data yang belum terisi.');
    }
    else {
      $('#acceptupdate').prop('disabled', false);
      $('#error-form').html('');
    }

  });


  $('.rate-btn').hover(function () {
    $('.rate-btn').removeClass('rate-btn-hover');
    var therate = $(this).attr('id');
    for (var i = therate; i >= 0; i--) {
      $('.btn-' + i).addClass('rate-btn-hover');
    };
  });

  $('.rate-btn').click(function () {
    var therate = $(this).attr('id');
    var dataRate = therate;
    $('.rate-btn').removeClass('rate-btn-active');
    for (var i = therate; i >= 0; i--) {
      $('.btn-' + i).addClass('rate-btn-active');
    };
    $.ajax({
      method: "POST",
      url: "http://localhost/akbarcos2/public/Profile/starRating",
      data: {dataRate:dataRate},
      success: function (data) {
       }
    });
    $.ajax({
      method: "POST",
      url: "http://localhost/akbarcos2/public/Profile/showRating",
      dataType: 'html',
      success: function (data) {
        console.log(data);
        $('.box-result').html(data);
       }
    });
    
  });




});
