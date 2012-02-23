class AddPriceFormForServices < ActiveRecord::Migration
  def change
    add_column :services, :price_form, :integer
  end
end
