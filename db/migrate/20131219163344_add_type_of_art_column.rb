class AddTypeOfArtColumn < ActiveRecord::Migration

  def up
    add_column :arts, :type_of_art_id, :string
  end

  def down
    remove_column :arts, :type_of_art_id
  end

end
