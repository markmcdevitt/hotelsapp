class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :room_id
      t.string :name
      t.string :email
      t.string :phone
      t.string :password_digest

      t.timestamps
    end
  end
end
