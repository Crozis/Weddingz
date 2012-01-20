class CreateServicesWeddingsJoinTable < ActiveRecord::Migration
  def up
    create_table :services_weddings, :id => false do |t|
      t.references :service, :wedding
    end
    add_index :services_weddings, [:service_id, :wedding_id]
  end

  def down
    drop_table :services_weddings
  end
end
