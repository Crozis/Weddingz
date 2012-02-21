class AddIconUrlToServiceType < ActiveRecord::Migration
  def change
    add_column :service_types, :icon_url, :string
  end
end
