# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', ->
  $("[name='gear[id][]']").bootstrapSwitch()

  manmenmeCount = 0

  $("#manmenme").click ->
    manmenmeCount++
    $("#manmenme-val").text(manmenmeCount)

