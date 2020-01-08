  $(document).ready(function() {

    // Selector input yang akan menampilkan autocomplete.
    $("#name").autocomplete({
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


  })
