require 'spec_helper'

describe UsersController do 
	before do
		@user = User.make!
		@party = Party.make!
		sign_in @user
	end

	describe "GET 'show'" do
    
    it "should be successful" do
      get :show, :id => @user.id
      response.should be_success
    end
    
    it "should find the right user" do
      get :show, :id => @user.id
      assigns(:user).should == @User
    end
    
  end

end