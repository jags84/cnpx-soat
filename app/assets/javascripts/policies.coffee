# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require validator.min
$ ->
  # Ready
  create_dropdown()
  # Validate
  fields_validations()

create_dropdown = () ->
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

fields_validations = () ->
  $('#policy_vehicle_type_id').change ->
    reset_fields()
    vehicle_type = $('#policy_vehicle_type_id :selected').text()
    switch vehicle_type
      when "MOTOS"
        set_disabled_engine_cylinder 'available'
      when "CAMPEROS Y CAMIONETAS"
        set_disabled_engine_cylinder 'available'
      when "CARGA O MIXTO"
        set_disabled_tons_field 'available'
      when "OFICIALES ESPECIALES"
        set_disabled_engine_cylinder 'available'
      when "AUTOS FAMILIARES"
        set_disabled_engine_cylinder 'available'
      when "VEHICULOS PARA SEIS O MAS PASAJEROS"
        set_disabled_engine_cylinder 'available'
      when "AUTOS DE NEGOCIOS Y TAXIS"
        set_disabled_engine_cylinder 'available'
      when "SERVICIO PUBLICO INTERMUNICIPAL"
        set_disabled_number_of_passengers_field 'available'

reset_fields = () ->
  $('#policy_number_of_passengers').attr('disabled',true)
  $('#policy_engine_cylinder').attr('disabled',true)
  $('#policy_tons').attr('disabled',true)

set_disabled_number_of_passengers_field = (status) ->
  if status == 'available'
    $('#policy_number_of_passengers').attr('disabled',false)

set_disabled_engine_cylinder = (status) ->
  if status == 'available'
    $('#policy_engine_cylinder').attr('disabled',false)

set_disabled_tons_field = (status) ->
  if status == 'available'
    $('#policy_tons').attr('disabled',false)
