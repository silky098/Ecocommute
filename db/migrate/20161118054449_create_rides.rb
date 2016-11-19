class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.integer :seats
      t.integer :day
      t.time :start_time
      t.integer :user_id
      t.integer :destination_id

      t.timestamps null: false
    end
  end
end
