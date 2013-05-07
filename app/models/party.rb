class Party < ActiveRecord::Base
  attr_accessible :address, :date, :latitude, :longitude, :rating, :state, :time, :title, :zipcode, :description

  has_many :hosted_parties
  has_many :attended_parties
  has_many :tags, :through => :party_tag
  has_many :party_tags
  has_many :images

  #This is the GA Engineer bit
  has_many :hosts, :through => :hosted_party, :source => :user
  has_many :attendees, :through => :attended_party, :source => :user
end
