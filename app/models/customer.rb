class Customer < ActiveRecord::Base
  validates_presence_of :name

  has_many :arts,
    inverse_of: :customer

  has_many :customer_collections,
    inverse_of: :customer

  has_many :collections, through: :customer_collections,
    inverse_of: :collection

  def total_spent
    1000
  end

end
