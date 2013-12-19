class Customer < ActiveRecord::Base
  validates_presence_of :name

  has_many :arts,
    inverse_of: :customer

  has_many :customer_collections
  has_many :collections, through: :customer_collections

end
