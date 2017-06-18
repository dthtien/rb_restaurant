class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :order_items, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :impressions, as: :impressionable

  def average_review_score
    self.reviews.blank? ? 0 : self.reviews.map(&:star).map(&:score).sum/self.reviews.size
  end

  def self.search(keyword)
    FoodItem.where("lower(name) LIKE ? OR lower(description) LIKE ?", "%#{keyword.downcase}%", "%#{keyword.downcase}%")
  end

  def impression_count
    !impressions.blank? ? impressions.size : 0
  end

  def unique_impression_count
    impressions.group(:ip_address).size.keys.length
  end
end
