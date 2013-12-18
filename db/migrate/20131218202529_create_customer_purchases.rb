class CreateCustomerPurchases < ActiveRecord::Migration
  def change
    create_table :customer_purchases do |t|
      t.integer :customer_id, null: false
      t.integer :art_it, null: false

      t.timestamps
    end
  end
end
