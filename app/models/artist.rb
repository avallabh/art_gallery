class Artist < ActiveRecord::Base
  validates_presence_of :name

  has_many :arts

end
