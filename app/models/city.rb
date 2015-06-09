class City < ActiveRecord::Base
  has_many :events
  has_many :venues, through: :city_events
  validates :name, presence: true
end
