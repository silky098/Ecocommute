class RenameRidesSeatsToSpaces < ActiveRecord::Migration
  def change
    rename_column :rides, :seats, :spaces
  end
end
