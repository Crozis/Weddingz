class AddColumnToWedding < ActiveRecord::Migration
  def change
    add_column :weddings, :name, :string
  end
end
