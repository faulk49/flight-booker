class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :start_airport_id
      t.integer :from_airport_id
      t.datetime :start_time
      t.integer :duration

      t.timestamps
    end
  end
end
