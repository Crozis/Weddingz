class AddColumnToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :activated, :boolean
  end
end
