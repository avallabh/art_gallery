class ChangeTypeColumn < ActiveRecord::Migration
  def up
    remove_column :arts, :type_id, :string
  end

  def down
    add_column :arts, :type_id, :string
  end
end
