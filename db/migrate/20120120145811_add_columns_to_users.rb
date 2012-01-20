class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :type, :string
    add_column :users, :agency_name, :string
    add_column :users, :phone_numer, :string
    add_column :users, :woman_first_name, :string
    add_column :users, :woman_last_name, :string
    add_column :users, :man_first_name, :string
    add_column :users, :man_last_name, :string
  end
end
