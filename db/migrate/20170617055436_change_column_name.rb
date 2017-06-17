class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    change_column_default :orders, :shipping, 20000
  end
end
