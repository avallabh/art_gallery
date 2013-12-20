class DropCustomerPurchase < ActiveRecord::Migration

  def change
    remove_table :customer_purchases
  end

end
