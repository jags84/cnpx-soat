# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  # Ready
  create_dropdown()
  # Validate
  fields_validations()
  # Plate Verification
  verify_plate_number()
  # Disable new policy button
  $('#plate-number').keyup ->
    disable_new_policy_button()
  $('#policy_plate').keyup ->
    $('#policy_plate').val($('#policy_plate').val().toLocaleUpperCase())

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

verify_plate_number = () ->
  $('#plate_validate_button').on 'click', ->
    plate = $('#plate-number').val().toLocaleUpperCase()
    $.ajax
      url: "/api/plates/"+plate+".json"
      type: "GET"
      beforeSend: ->
        # Loading
        $('#plate_validate_button').button('loading')
      complete: ->
        # Loading
        $('#plate_validate_button').button('reset')
      success: (response) ->
        if response.status == 'unregistered'
          window.location.href = "/policies/new";
        else
          $('.validate-error').removeClass('hidden')
          disable_new_policy_button()

disable_new_policy_button = () ->
  $('#new_policy_button').addClass('hidden')
  $('#new_policy_button').addClass('disabled')
  $('#new_policy_button').attr('disabled',true)
