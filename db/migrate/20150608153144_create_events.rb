class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :start_time
      t.string :end_time
      t.string :city_id
      t.integer :lattitude
      t.integer :longitude

      t.timestamps null: false
    end
  end
end
