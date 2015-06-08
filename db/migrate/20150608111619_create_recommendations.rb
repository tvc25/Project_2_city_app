class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :user
      t.string :place
      t.string :activity
      t.string :description
      t.string :image
      t.belongs_to :city, index: true
      t.belongs_to :activity, index: true

      t.timestamps null: false
    end
    add_foreign_key :recommendations, :cities
    add_foreign_key :recommendations, :activities
  end
end
