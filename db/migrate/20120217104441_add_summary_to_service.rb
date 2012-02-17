class AddSummaryToService < ActiveRecord::Migration
  def change
    add_column :services, :summary, :text
  end
end
