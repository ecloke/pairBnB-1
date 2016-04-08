class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :guest_name
      t.string :host_name
      t.date :from
      t.date :until
      t.integer :user_id
      t.integer :listing_id

      t.timestamps null: false
    end
  end
end
