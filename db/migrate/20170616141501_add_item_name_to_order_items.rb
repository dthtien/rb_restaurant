class AddItemNameToOrderItems < ActiveRecord::Migration[5.0]
  def change
    add_column :order_items, :name, :string
  end
end
