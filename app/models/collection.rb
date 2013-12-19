class Collection < ActiveRecord::Base
  validates_presence_of :name

  has_many :arts,
    inverse_of: :collection

  has_many :customer_collections,
    inverse_of: :collection

  has_many :customers, through: :customer_collections,
    inverse_of: :collection

#  belongs_to :customer_collection,
#    inverse_of: :collections
end
