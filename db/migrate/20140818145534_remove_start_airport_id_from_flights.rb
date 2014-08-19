class RemoveStartAirportIdFromFlights < ActiveRecord::Migration
  def change
    remove_column :flights, :start_airport_id
  end
end
