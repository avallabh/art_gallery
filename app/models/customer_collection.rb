class CustomerCollection < ActiveRecord::Base

  validates_presence_of :customer_id
  validates_presence_of :collection_id

  belongs_to :customer,
    inverse_of: :customer_collections

  belongs_to :collection,
    inverse_of: :customer_collections

end
