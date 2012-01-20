class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :phone_number
      t.string :address
      t.string :image_url
      t.string :name

      t.timestamps
    end
  end
end
