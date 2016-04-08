class Listing < ActiveRecord::Base
  belongs_to :user
  mount_uploaders :pictures, ListingPictureUploader
end
