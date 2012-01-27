class AddDescriptionToService < ActiveRecord::Migration
  def change :after => :id
    add_column :services, :description, :text
  end
end
