class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location
      t.string :contactInfo
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :image

      t.timestamps
    end
  end
end
