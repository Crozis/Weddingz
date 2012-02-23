class CreateServiceTypesWeddings < ActiveRecord::Migration
  def change
    add_column :service_types_weddings, :id, :primary_key
    add_column :service_types_weddings, :activated, :boolean, :default => false
  end
end
