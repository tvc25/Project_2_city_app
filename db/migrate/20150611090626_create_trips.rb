class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.date :from
      t.date :to
      t.string :location
      t.belongs_to :city, index: true

      t.timestamps null: false
    end
    add_foreign_key :trips, :cities
  end
end
