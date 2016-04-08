class AddPicturesToListings < ActiveRecord::Migration
  def change
    add_column :listings, :pictures, :string, array: true, default: []
  end
end
