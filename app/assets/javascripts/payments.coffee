# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#card-number").change ->
    cc_terminal = $("#card-number").val().slice(-4)
    $('#payment_credit_card_terminal').val(cc_terminal)
    return
