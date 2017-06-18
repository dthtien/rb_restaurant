class AddFoodItemIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :food_item, foreign_key: true
  end
end
