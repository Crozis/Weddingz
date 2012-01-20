class CreateServicesWeddingsJoinTable < ActiveRecord::Migration
  def change
    create_table :services_weddings, :id => false do |t|
      t.references :service, :wedding
    end
    add_index :services_weddings, [:service_id, :wedding_id]
  end
end
