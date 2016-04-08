class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :gender
      t.string :location
      t.text :description
      t.string :image
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
