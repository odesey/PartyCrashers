require 'spec_helper'

describe TagsController do

  describe "GET 'title:string'" do
    it "returns http success" do
      get 'title:string'
      response.should be_success
    end
  end

end
