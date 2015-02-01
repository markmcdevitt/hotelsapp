class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :room_id
      t.date :checkin
      t.date :checkout
      t.integer :noOfPeople

      t.timestamps
    end
  end
end
