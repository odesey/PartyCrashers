class Team < ActiveRecord::Base
  attr_accessible :name, :memberships

  has_many :memberships
  has_many :people, :through => :memberships

  def generate_pairs
    @pairs = []
    @new_pair = []
    @members = self.people.all
    @members.each do |member|

      if member.has_meeting == nil || false
        @new_pair << member

        if @new_pair.length == 2

          OneOnOne.send_pair_email(@new_pair).deliver

          # find a way to reduce the Big O here later.  
          @new_pair.each do |pairee| 
            #Switching boolean here accounts for a 'one-person pair' 
            pairee.has_meeting = true 
            
            #Creating pairing history to check against for later rounds of emailing
            if @new_pair.index(pairee) == 0
              pairee.pairings << Pairing.new(:partner_id => @new_pair[1].id, :team_id =>self.id)
            else
              pairee.pairings << Pairing.new(:partner_id => @new_pair[0].id, :team_id =>self.id)
            end
          end   
          @pairs << @new_pair
          @new_pair = []
        end
      end 
    end
  end

end

