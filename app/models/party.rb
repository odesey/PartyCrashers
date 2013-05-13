class Party < ActiveRecord::Base
  attr_accessible :address, :date, :latitude, :longitude, :rating, :state, :time, :title, :zipcode, :description, :main_image, :tag_list
  #acts_as_taggable and :tag_list are provide by the acts-as_taggable_on gem.
  acts_as_taggable


  has_many :hosted_parties
  has_many :attended_parties
  has_many :tags, :through => :party_tag
  has_many :party_tags
  has_many :images
  has_many :comments
  has_many :users, :through => :user_parties

  #This through the active record reputation gem
  has_reputation :votes, source: :user, aggregated_by: :sum
  

  #This is the GA Engineer bit
  # has_many :hosts, :through => :hosted_party, :source => :user
  # has_many :attendees, :through => :attended_party, :source => :user

  geocoded_by :geolocate
  after_validation :geocode

  def geolocate
    "#{self.address}"', '"#{self.state}"', '"#{self.zipcode}"
    # binding.pry
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
