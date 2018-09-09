class CreateTripLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_locations do |t|
      t.integer :location_id, null: false
      t.integer :trip_id, null: false
      t.timestamps
    end
  end
end
