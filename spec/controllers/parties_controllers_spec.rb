require 'spec_helper'

describe PartiesController do 
	before do
		@user = User.make!
		@party = Party.make!
		binding.pry
	end

		describe "GET to index" do
      before do
        get :index
      end

      it "should respone with status 200" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end 
    end
	
end