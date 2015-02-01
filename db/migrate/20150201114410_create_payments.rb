class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :booking_id
      t.integer :user_id
      t.decimal :totalCost
      t.string :pamentMethod
      t.decimal :deposit

      t.timestamps
    end
  end
end
