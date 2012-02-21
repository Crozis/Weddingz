class ChangeServiceTypeIdFromStringToInt < ActiveRecord::Migration
  def change
    change_column :services, :service_type_id, :integer
  end
end
