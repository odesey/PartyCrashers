class Party < ActiveRecord::Base
  attr_accessible :address, :date, :latitude, :longitude, :rating, :state, :time, :title, :zipcode
end
