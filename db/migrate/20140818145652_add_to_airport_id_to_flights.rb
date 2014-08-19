class AddToAirportIdToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :to_airport_id, :integer
  end
end
