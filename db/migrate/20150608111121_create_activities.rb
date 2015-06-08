class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :price
      t.string :people_like_it
      t.belongs_to :city, index: true

      t.timestamps null: false
    end
    add_foreign_key :activities, :cities
  end
end
