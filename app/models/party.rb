class Party < ActiveRecord::Base
  attr_accessible :address, :city, :date, :description, :latitude, :longitude, :rating, :state, :time, :title, :zipcode
end
