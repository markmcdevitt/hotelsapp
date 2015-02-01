class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :hotel_id
      t.string :category
      t.decimal :price
      t.string :extras
      t.string :roomImage

      t.timestamps
    end
  end
end
