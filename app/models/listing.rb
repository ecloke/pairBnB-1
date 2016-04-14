
class Listing < ActiveRecord::Base
  
  has_many :reservations, :dependent => :destroy
  belongs_to :user
  mount_uploaders :pictures, ListingPictureUploader
  validates_presence_of :price_per_night, :pictures
  searchkick

end

