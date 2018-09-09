class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.float :lng
      t.float :lat
      t.string :city
      t.string :state
      t.string :country
      t.timestamps
    end
  end
end
