# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery -> 
  $('#new_painting').fileupload
    dataType: "script"
    dropZone: $('#dropzone')

    add: (e, data) ->
      types = /(\.|\/)(gif|jpe?g|png)$/i
      file = data.files[0]

      if types.test(file.type) || types.test(file.name)
        data.context = $(tmpl("template-upload", data.files[0]))
        $('#new_painting').append(data.context)
        data.submit()
      else
        alert("#{file.name} is not a gif, jpeg, or png image file")
      
    progress: (e, data) ->
      if data.context
        progress = parseInt(data.loaded / data.total * 100, 10)
        data.context.find('.bar').css('width', progress + '%')

      if progress == 100
        data.context.hide("slow")
