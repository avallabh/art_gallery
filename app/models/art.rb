class Art < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :for_sale # :inclusion => {:in => [true, false]}
  validates_presence_of :collection_id
  validates_presence_of :artist_id
  validates_presence_of :type_of_art_id

  belongs_to :artist,
    inverse_of: :arts,
    dependent: :destroy
  belongs_to :collection,
    inverse_of: :arts,
    dependent: :destroy
  belongs_to :type_of_art,
    inverse_of: :arts,
    dependent: :destroy
  belongs_to :customer,
    inverse_of: :arts,
    dependent: :destroy

end
