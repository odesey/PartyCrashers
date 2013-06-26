class Person < ActiveRecord::Base
  attr_accessible :email, :name, :memberships

  has_many :memberships
  has_many :teams, :through => :memberships
  has_many :pairings
end
