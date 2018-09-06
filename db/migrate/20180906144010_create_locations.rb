class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :start
      t.string :next
      t.string :end
      t.timestamps
    end
  end
end
