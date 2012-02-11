class AddColumnImagePathToServiceTypes < ActiveRecord::Migration
  def change
        add_column :service_types, :image_url, :string
  end
end
