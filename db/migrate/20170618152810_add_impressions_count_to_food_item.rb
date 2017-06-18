class AddImpressionsCountToFoodItem < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :impressions_count, :integer
  end
end
