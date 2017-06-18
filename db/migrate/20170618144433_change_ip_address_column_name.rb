class ChangeIpAddressColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :impressions, :ip_adress, :ip_address
  end
end
