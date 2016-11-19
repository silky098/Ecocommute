class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :address
      t.string :postcode

      t.timestamps null: false
    end
  end
end
