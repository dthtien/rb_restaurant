class AddImageLinkToFoodItems < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :image_link, :string
  end
end
