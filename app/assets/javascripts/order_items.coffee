$(document).on 'turbolinks:load', ->
  divTotalCost = $('strong#total-cost')
  currentTotalCost = parseInt divTotalCost.text()

  $('.numeric').change (e)->
    tdParent = $(this).parents('td')
    totalItemPrice = tdParent.siblings('td.total-item-price').find('input')
    itemPrice = parseInt tdParent.siblings('td.item-price').find('input').val()
    
    currentItemQuantity = parseInt $(this).val()
    oldTotalItemPrice = parseInt totalItemPrice.val()
    currentTotalItemPrice = currentItemQuantity * itemPrice

    totalItemPrice.val(currentTotalItemPrice)
    changTotalCost(oldTotalItemPrice, currentTotalItemPrice)
    currentTotalCost = parseInt divTotalCost.text()

  changTotalCost = (oldTotalItemPrice, currentTotalItemPrice) -> 
    newTotalCost = currentTotalCost + currentTotalItemPrice - oldTotalItemPrice
    divTotalCost.html newTotalCost 