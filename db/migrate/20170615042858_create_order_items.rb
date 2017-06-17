class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.decimal :unit_price
      t.integer :quantity
      t.decimal :total_price
      t.references :food_item, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
