class ChangeColumnsStringToText < ActiveRecord::Migration
  change_table :services do |t|
    t.change :pictures_url, :text
  end
end