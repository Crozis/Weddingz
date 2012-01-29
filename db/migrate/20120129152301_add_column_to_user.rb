class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :wedding_id, :integer
  end
end
