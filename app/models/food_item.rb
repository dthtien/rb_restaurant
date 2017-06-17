class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :order_items

  def self.search(keyword)
    FoodItem.where("lower(name) LIKE ? OR lower(description) LIKE ?", "%#{keyword.downcase}%", "%#{keyword.downcase}%")
  end
end
