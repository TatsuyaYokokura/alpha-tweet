$(function() {
  $('#user_avatar').on('change', function(e) {
      var file = e.target.files[0];
      var blobUrl = window.URL.createObjectURL(file);
      $('#image').attr('src', blobUrl).css({'width':'200px', 'height':'150px', 'backbroud-size':'cover'});
  });
});