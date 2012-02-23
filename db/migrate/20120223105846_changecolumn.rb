class Changecolumn < ActiveRecord::Migration
  def up
    remove_column :service_types_weddings, :activated
    add_column :service_types_weddings, :activated, :boolean, :default => false
  end

  def down
    remove_column :service_types_weddings, :activated
    add_column :service_types_weddings, :activated, :boolean
  end
end
