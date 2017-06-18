# $(document).on "turbolinks:load", ->
#   $.ajax
#       url: 'menu' 
#       data: {section: 'Lunch'}
#       success: (data) ->
#         listFoodItems = $('div#list-food-items')
#         if $(data).find('div#food-items>.food-item').length > 1
#          listFoodItems.html $(data).find('div#food-items')
#         else
#           listFoodItems.html '<h4 class="orange-text">No Food Item<h4>'
#   $('li.tab>a').click ->
#     $this = $(this)
#     section = $this.text().toLowerCase()
#     $.ajax
#       url: 'menu' 
#       data: {section: section}
#       success: (data) ->
#         listFoodItems = $('div#list-food-items')
#         if $(data).find('div#food-items>.food-item').length > 1
#          listFoodItems.html $(data).find('div#food-items')
#         else
#           listFoodItems.html '<h4 class="orange-text">No Food Item<h4>'
