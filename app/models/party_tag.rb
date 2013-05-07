class PartyTag < ActiveRecord::Base
  attr_accessible :party_id, :tag_id

  belongs_to :tag
  belongs_to :party
end
