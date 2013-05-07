class Image < ActiveRecord::Base
  attr_accessible :name, :party_id

  belongs_to :party
end
