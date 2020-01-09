

  $(document).ready(function() {

    // Selector input yang akan menampilkan autocomplete.
    $("input").autocomplete({
      source: function( request, response ) {
        // Fetch data
        $.ajax({
         url: "http://localhost/cos_mvc/public/Dashboard/AutoFill",
         type: 'post',
         dataType: "JSON",
         data: {
          search: request.term
         },
         success: function( data ) {
          response( data.slice(0,10) );
          console.log(data);
         }
        });}, // Kode php untuk prosesing data.
      minLength: 2,
    });

    $('#search').click(function() {
      var name = $('#name').val();
      $.ajax({
        url: 'http://localhost/cos_mvc/public/Dashboard/createTableCari',
        data: {
          name: name
        },
        method: 'post',
        dataType: 'html',
        success: function(data) {
          $('#tableCari').html(data);
        }
      })
    });

    $('#pagination li').click(function(){
      $('#pagination li').removeClass('active')
      $(this).addClass('active');
      var page = $(this).text();
      $.ajax({
        url:'http://localhost/cos_mvc/public/Dashboard/showPagination',
        data: {page:page},
        method:'post',
        dataType:'html',
        success: function(data){
          $('#tableinit').html(data);
        }
      })
    });
  })
