require 'spec_helper'
require 'pry'

# to only run this test do the following; rspec spec/models/fruit_spec.rb from the terminal

describe Party do

	it { should have_many :images }
  
  describe "A party" do #context in shoulda, scenario in cucumber(gherkin)
  	before do #setup in shoulda, given in cucumber(gherkin)
  		@party = Party.create(:title => "1st Party", :zipcode => 10011)
  	end

  	it "should be geolocated" do #this would be a should in shoulda and Then in cucumber
  		@party.latitude.should_not be_nil
      @party.longitude.should_not be_nil
  		
  	end

  	# it "should remember what class it is using STI(single table inheritance" do
  	# 	party = Fruit.find(@party.id)
  	# 	party.should_not be_nil
  	# 	party.should_not == be_nil
  	# 	party.should_not eq(nil)

  	# 	party.class.should == party
  	# 	party.class.should eq(party)

  	# 	party.should == @party
  	# 	party.should eq(party)

  	# 	party.is_a?(Fruit).should be_true
  	# 	party.class.ancestors.should include Fruit
  	# end
  end
end