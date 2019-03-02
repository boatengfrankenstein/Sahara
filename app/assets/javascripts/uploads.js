Dropzone.autoDiscover = false;

$(document).ready(function() {
  var myDropzone = new Dropzone('#uploader', { timeout: 0 });

  myDropzone.on("success", function(file, request) {
    console.log(request);
    var resp = $.parseXML(request);
    var filePath = $(resp).find("Key").text();

    $.post('/uploads', {
      authenticity_token: $.rails.csrfToken(),
      upload: {
        path: filePath,
        file_type: file.type,
        last_modified: file.lastModified
      }
    })
  });
});