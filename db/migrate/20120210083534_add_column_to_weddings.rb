class AddColumnToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :activated, :boolean, :default => false
  end
end
