class RemovePicturesFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :pictures
  end
end
