class User < ActiveRecord::Base
  belongs_to :city
  belongs_to :recommendation
  belongs_to :activity
end
