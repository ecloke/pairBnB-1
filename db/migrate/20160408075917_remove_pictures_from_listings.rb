class RemovePicturesFromListings < ActiveRecord::Migration
  def change
       remove_column :listings, :picture
  end
end
