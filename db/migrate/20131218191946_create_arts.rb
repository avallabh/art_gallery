class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :title, null: false
      t.integer :artist_id, null: false
      t.string :date_created
      t.string :date_for_sale
      t.integer :type_id, null: false
      t.integer :cost_in_pennies
      t.boolean :for_sale, null: false
      t.integer :collection_id, null: false
      t.integer :customer_id

      t.timestamps
    end
  end
end
