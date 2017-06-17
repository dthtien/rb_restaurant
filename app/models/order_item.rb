class OrderItem < ApplicationRecord
  belongs_to :food_item
  belongs_to :order, optional: true

  def update_total_price
    self.total_price = quantity * self.unit_price
    self.save
  end
end
