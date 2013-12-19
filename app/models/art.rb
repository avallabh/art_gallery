class Art < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :for_sale # :inclusion => {:in => [true, false]}
  validates_presence_of :collection
  validates_presence_of :artist
  validates_presence_of :type_of_art

  belongs_to :artist,
    inverse_of: :arts
  belongs_to :collection,
    inverse_of: :arts
  belongs_to :type_of_art,
    inverse_of: :arts
  belongs_to :customer,
    inverse_of: :arts

end
