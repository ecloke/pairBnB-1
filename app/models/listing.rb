require 'elasticsearch/model'
class Listing < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  has_many :reservations, :dependent => :destroy
  belongs_to :user
  mount_uploaders :pictures, ListingPictureUploader
  validates_presence_of :price_per_night, :pictures
  searchkick

end

