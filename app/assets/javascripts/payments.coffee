# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#cc_year').change ->
    validate_dates()
  $('#expiry-month').change ->
    validate_dates()

  $("#card-number").change ->
    cc_terminal = $("#card-number").val().slice(-4)
    $('#payment_credit_card_terminal').val(cc_terminal)
    return

validate_dates = () ->
  date = new Date()
  m = date.getMonth() + 1
  y = date.getFullYear()
  selected_year = $('#cc_year :selected').val()
  selected_month = $('#expiry-month :selected').val()
  if parseInt(selected_year) == y and parseInt(selected_month) <= m
    if $(".dates-errors").length > 0
      $(".dates-errors").remove()
    $('#cc_year').parent().addClass('has-error has-danger')
    $('#expiry-month').parent().addClass('has-error has-danger')
    $('#cc_year').parent().append("<div class='help-block with-errors dates-errors'><ul class='list-unstyled'><li>La fecha no puede ser menor a la actual fecha actual</li></ul></div>")
    $('#expiry-month').parent().append("<div class='help-block with-errors dates-errors'><ul class='list-unstyled'><li>La fecha no puede ser menor a la actual fecha actual</li></ul></div>")
    $("#pay-button").attr('disabled',true)

  else
    $('#cc_year').parent().removeClass('has-error has-danger')
    $('#expiry-month').parent().removeClass('has-error has-danger')
    $("#pay-button").attr('disabled',false)
    $(".dates-errors").remove()
