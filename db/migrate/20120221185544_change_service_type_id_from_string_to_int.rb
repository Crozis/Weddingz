class ChangeServiceTypeIdFromStringToInt < ActiveRecord::Migration
  def change
    drop_table :services
    create_table :services do |t|
      t.string  :name
      t.string  :phone_number
      t.string  :address
      t.text    :front_picture
      t.string  :pictures_url
      t.text    :price
      t.text    :description
      t.text    :summary
      t.integer :service_type_id
      t.timestamps
    end
  end
end
