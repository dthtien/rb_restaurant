class AddNameToStars < ActiveRecord::Migration[5.0]
  def change
    add_column :stars, :name, :string
  end
end
