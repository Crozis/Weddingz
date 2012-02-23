class AddDateToWedding < ActiveRecord::Migration
  def change
    add_column :weddings, :period, :date
    change_column :weddings, :religion, :string
  end
end
