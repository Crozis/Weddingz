class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.integer :budget
      t.string :place
      t.integer :nb_person
      t.integer :nb_child
      
      t.timestamps
    end
  end
end
