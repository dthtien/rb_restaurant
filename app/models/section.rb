class Section < ApplicationRecord
  has_many :food_items, dependent: :destroy

  def sort_food_items(sort_method)
    if sort_method == 'alphabetical'
      sort_order = 'name ASC'
    elsif sort_method == 'pricedesc'
      sort_order = 'price DESC'
    elsif sort_order == 'priceasc'
      sort_order = 'price ASC'
    else
      sort_order = 'created_at DESC'
    end
    self.food_items.order(sort_order)
  end
end
