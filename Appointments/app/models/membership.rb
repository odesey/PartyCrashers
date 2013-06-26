class Membership < ActiveRecord::Base
  attr_accessible :person_id, :team_id

  belongs_to :team
  belongs_to :person

  def find_teamate
    @self = self.id
    @teams = @self.teams
    @membership = @self.memberships
  end

end


