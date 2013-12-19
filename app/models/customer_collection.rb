class CustomerCollection < ActiveRecord::Base

  validates_presence_of :customer
  validates_presence_of :collection

  belongs_to :customer,
    inverse_of: :customer_collections

  belongs_to :collection,
    inverse_of: :customer_collections

end
