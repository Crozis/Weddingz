class AddColumnToService < ActiveRecord::Migration
  def change
    add_column :services, :front_picture, :string
    add_column :services, :price, :text
    rename_column :services, :image_url, :pictures_url
  end
end
