class UserParty < ActiveRecord::Base
  attr_accessible :host, :party_id, :user_id

  belongs_to :party
  belongs_to :user

  # def attend
  # 	# self.
  # end

  # def host
  # end

end
