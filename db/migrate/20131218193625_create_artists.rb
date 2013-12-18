class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :birthplace
      t.string :style

      t.timestamps
    end
  end
end
