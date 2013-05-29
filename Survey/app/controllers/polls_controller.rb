class PollsController < ApplicationController

  def index
    # let's pretend that we've mapped this action to 
    # http://localhost:3000/sms in the routes.rb file
    
    # localtunnel -k ~/.ssh/id_rsa.pub 8080

    @message_body = params["Body"]
    from_number = params["From"]
    render @polls, :locals => {:message_body => @message_body}
 
  end

  def show
  end

  def update
  end

  def create
  end

  def new
  end
end
