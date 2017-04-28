# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  vehicle_sub_type = undefined
  vehicle_sub_type = $('#policy_vehicle_sub_type_id').html()
  $('#policy_vehicle_type_id').change ->
    vehicle_type = undefined
    options = undefined
    vehicle_type = $('#policy_vehicle_type_id :selected').text()
    options = $(vehicle_sub_type).filter('optgroup[label="' + vehicle_type + '"]').html()
    if options
      $('#policy_vehicle_sub_type_id').html options
    else
      $('#policy_vehicle_sub_type_id').empty()
