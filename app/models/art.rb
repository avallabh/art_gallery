class Art < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :for_sale # :inclusion => {:in => [true, false]}
  validates_presence_of :collection_id
  validates_presence_of :artist_id
  validates_presence_of :type_id

  belongs_to :artist
  belongs_to :collection
  belongs_to :type_of_art
end
