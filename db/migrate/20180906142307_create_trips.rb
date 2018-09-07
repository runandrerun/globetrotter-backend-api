class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.json :destinations
      t.integer :all_trips
      t.integer :user_id
      t.integer :event_id
      t.integer :location_id
      t.timestamps
    end
  end
end
