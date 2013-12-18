class CreateTypeOfArts < ActiveRecord::Migration
  def change
    create_table :type_of_arts do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
