class OneOnOne < ActionMailer::Base
  default from: "admin@admin.com", subject: "Your One on One This Week"

  #callling in generate pairs function in Team model
  #Self refers to a pair
  def send_pair_email(pair)
    pair.each do |pairee|

      if pair.index(pairee) == 0
        @you = pairee
        @coworker = pair[1]
        mail(to: pairee.email) 
      else
        @you = pairee
        @coworker = pair[0]
        mail(to: pairee.email)
      end
    end

  end
end

