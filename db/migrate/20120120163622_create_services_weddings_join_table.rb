class CreateServicesWeddingsJoinTable < ActiveRecord::Migration
  def change
    create_table :services_weddings do |t|
      t.references :service, :wedding
      t.column :activated, :boolean, :default => true
    end
    add_index :services_weddings, [:service_id, :wedding_id]
  end
end
