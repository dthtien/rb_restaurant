$(document).on 'turbolinks:load', ->
  $('.remove-fields').click (e)->
    $(this).next('div').find('input[type=hidden]').val('1')
    console.log $(this).next('div').find('input[type=hidden]').val()    
    $(this).closest('tr').hide()
    e.preventDefault()