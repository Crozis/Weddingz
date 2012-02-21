class ChangeNbChildToHasChild < ActiveRecord::Migration
  def up
    remove_column :weddings, :nb_child
    add_column :weddings, :has_child, :boolean
  end

  def down
    remove_column :weddings, :has_child
    add_column :weddings, :nb_child, :integer
  end
end
