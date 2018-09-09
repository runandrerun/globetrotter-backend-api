class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :start_date
      t.string :end_date
      t.string :img_url
      t.string :video_url
      t.integer :location_id
      t.timestamps
    end
  end
end
