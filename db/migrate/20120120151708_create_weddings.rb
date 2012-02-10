class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.integer :budget,    :default => 0
      t.string :place
      t.integer :nb_person, :default => 0
      t.integer :nb_child,  :default => 0
      
      t.timestamps
    end
  end
end
