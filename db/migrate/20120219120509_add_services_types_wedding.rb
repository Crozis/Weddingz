class AddServicesTypesWedding < ActiveRecord::Migration
  def change
    create_table :service_types_weddings, :id => false do |t|
      t.references :service_type, :wedding
    end
  end
end
