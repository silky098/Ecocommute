class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.text :address
      t.string :postcode
      t.string :phone
      t.string :gender
      t.string :license
      t.string :car_make
      t.string :car_colour
      t.string :car_reg_no
      t.boolean :smoking
      t.boolean :pets
      t.integer :destination_id

      t.timestamps null: false
    end
  end
end
