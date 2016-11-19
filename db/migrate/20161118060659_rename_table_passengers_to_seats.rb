class RenameTablePassengersToSeats < ActiveRecord::Migration
  def change
    rename_table :passengers, :seats
  end
end
