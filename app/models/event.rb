class Event < ActiveRecord::Base
  has_many :venues
  belongs_to :venue
  belongs_to :city
end
