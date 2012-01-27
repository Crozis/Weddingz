class AddDescriptionToService < ActiveRecord::Migration
  def change
    add_column :services, :description, :text
  end
end
