class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body   
  #Write a unit test to check this, if not use tha
  has_many :hosted_parties
  has_many :attended_parties
  has_many :comments, :through => :parties
  has_many :parties, :through => :user_parties

  #has_reputation :votes, source: {reputation: :votes, of: :parties}, aggregated_by: :sum

  #This is the GA Engineer bit
  # has_many :parties_hosted, :through => :hosted_party, :source => :party
  # has_many :parties_crashed, :through => :attended_party, :source => :party

end
