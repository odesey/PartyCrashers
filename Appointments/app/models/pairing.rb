class Pairing < ActiveRecord::Base
  attr_accessible :date, :person_id, :partner_id, :team_id

  belongs_to :persons

end
