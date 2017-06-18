class Section < ApplicationRecord
  has_many :food_items, dependent: :destroy

  def sort_food_items(sort_method)
    case sort_method
    when 'alphabetical'
      sort_order = 'name ASC'
    when 'pricedesc'
      sort_order = 'price DESC'
    when 'priceasc'
      sort_order = 'price ASC'
    else
      sort_order 'created_at DESC'
    end
    self.food_items.order(sort_order)
  end
end
