$(function() {
  $(".btnEdit").on("click", function() {
    const id = $(this).data("id");
    $.ajax({
      url: "http://localhost/cos_mvc/public/admin/getDataUser",
      data: { id: id },
      method: "post",
      dataType: "json",
      success: function(data) {
        $("#id").val(data.id_udata);
        $("#valueText").val(data.poin);
        $("#valueSelect").val(data.status);
      }
    });
  });

  $(".btnDel").on("click", function() {
    const id = $(this).data("id");
    $.ajax({
      url: "http://localhost/cos_mvc/public/admin/getDataUser",
      data: { id: id },
      method: "post",
      dataType: "json",
      success: function(data) {
        $("#deleteIdUdata").val(data.id_udata);
        $("#deleteIdUser").val(data.id_user);
      }
    });
  });

  $("#select").on("click", function() {
    if ($("#select").val() == "status") {
      $("#valueText").attr("type", "hidden");
      $("#valueSelect").removeAttr("hidden");
    } else {
      $("#valueText").attr("type", "text");
      $("#valueSelect").attr("hidden", "true");
    }
  });

  $(".btnCheck").on("click", function() {
    const id = $(this).data("id");
    $.ajax({
      url: "http://localhost/cos_mvc/public/admin/getDataTicket",
      data: { id: id },
      method: "post",
      dataType: "json",
      success: function(data) {
        $("#id").val(data.id_ticket);
        $("#subject").html(data.judul_ticket);
        $("#from").html(data.email);
        $("#variant").html(data.jenis_ticket);
        $("#content").html(data.isi_ticket);
        if (data.jenis_ticket=="Validasi"){
          $("#validateacc").show();
        }
        else{
          $("#validateacc").hide();
        }
      }
    });
  });
});
