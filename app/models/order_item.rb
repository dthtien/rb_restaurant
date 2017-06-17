class OrderItem < ApplicationRecord
  belongs_to :food_item
  belongs_to :order, optional: true

  before_save :update_item_price, :update_total_price, :update_item_name

  private
    def update_item_price
      self.unit_price = food_item.price
    end

    def update_item_name
      self.name = food_item.name
    end

    def update_total_price
      self.total_price = quantity * self.unit_price
    end
end
