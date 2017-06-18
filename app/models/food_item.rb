class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :order_items, dependent: :destroy
  has_many :reviews, dependent: :destroy

  default_scope { order(created_at: :desc) }

  def average_review_score
    self.reviews.blank? ? 0 : self.reviews.map(&:star).map(&:score).sum/self.reviews.size
  end

  def self.search(keyword)
    FoodItem.where("lower(name) LIKE ? OR lower(description) LIKE ?", "%#{keyword.downcase}%", "%#{keyword.downcase}%")
  end
end
