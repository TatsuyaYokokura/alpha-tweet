$(function() {
  $('input[type="file"]').on('change', function(e) {
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    $('#preview').attr({
      'class': 'image-preview',
      'src': blobUrl
    });
  });
});