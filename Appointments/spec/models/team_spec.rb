require 'spec_helper'

describe Team do
  before do
    @team = Team.make!
    4.times {
      @team.people << Person.make!
    }



  end

  # Making sure test is being setup correctly
  it "should create members" do 
    @team.people.length.should be(4)
  end

  describe 'generate_pairs' do
    before do
      @team.generate_pairs
    end

    it 'should create two pairs' do 
      @pairs.length.should be(2)
    end
  end

end