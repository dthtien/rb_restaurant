class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.string :coupon
      t.decimal :shipping
      t.decimal :total

      t.timestamps
    end
  end
end
