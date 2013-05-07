class Comment < ActiveRecord::Base
  attr_accessible :body, :party_id, :user_id
end
