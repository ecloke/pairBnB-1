class Listing < ActiveRecord::Base
  has_many :reservations
  belongs_to :user
  mount_uploaders :pictures, ListingPictureUploader
end
