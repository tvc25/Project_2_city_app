class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :likes
      t.string :dislikes
      t.belongs_to :city, index: true
      t.belongs_to :recommendation, index: true
      t.belongs_to :activity, index: true

      t.timestamps null: false
    end
    add_foreign_key :users, :cities
    add_foreign_key :users, :recommendations
    add_foreign_key :users, :activities
  end
end
