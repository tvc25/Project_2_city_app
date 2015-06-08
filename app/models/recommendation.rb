class Recommendation < ActiveRecord::Base
  belongs_to :city
  belongs_to :activity
end
