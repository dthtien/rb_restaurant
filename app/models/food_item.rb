class FoodItem < ApplicationRecord
  belongs_to :section

  def self.search(keyword)
    FoodItem.where("lower(name) LIKE ? OR lower(description) LIKE ?", "%#{keyword.downcase}%", "%#{keyword.downcase}%")
  end
end
