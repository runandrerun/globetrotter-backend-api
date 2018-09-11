class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.float :lng
      t.float :lat
      t.string :name
      t.timestamps
    end
  end
end
