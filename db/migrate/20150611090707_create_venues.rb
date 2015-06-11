class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :longitude
      t.integer :lattitude

      t.timestamps null: false
    end
  end
end
