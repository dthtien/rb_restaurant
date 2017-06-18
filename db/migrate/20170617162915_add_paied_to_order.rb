class AddPaiedToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :paied, :boolean, default: false
  end
end
