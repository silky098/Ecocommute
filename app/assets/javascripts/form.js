$(document).ready(function(){
  $('.driver_check').on('click', function(e){
    if( $(this).is(':checked') ) {
      $('.driver_form').show();
    } else {
      $('.driver_form').hide();
    }
  });
});
