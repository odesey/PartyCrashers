class Tag < ActiveRecord::Base
  attr_accessible :title

  has_many :parties, :through => :party_tag
  has_many :party_tags
end
