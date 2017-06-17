class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :order_items 

  def self.create_or_find_order(id)
    where(id: id).first_or_create
  end

  def update_subtotal
    self.subtotal = order_items.collect do |oi|
      oi.valid? ? oi.quantity * oi.unit_price : 0
    end.sum
    self.save
  end

end
