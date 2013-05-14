class Comment < ActiveRecord::Base
  attr_accessible :body, :party_id, :user_id

  belongs_to :party
  belongs_to :user
end
