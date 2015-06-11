class Venue < ActiveRecord::Base
    has_many :cities, through: :venue_events
end
