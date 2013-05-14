class PollsController < ApplicationController
  # GET /polls
  # GET /polls.json
  def index

    account_sid = 'AC14aa346613c89fec467663aad46c05a2'
    auth_token = '0e43d0a04e110f7faa2692e388b0c7f5'
   
    client = Twilio::REST::Client.new(account_sid, auth_token)
  end


  # def process_sms
  #   account_sid = 'AC14aa346613c89fec467663aad46c05a2'
  #   auth_token = '0e43d0a04e110f7faa2692e388b0c7f5'
   
  #   client = Twilio::REST::Client.new(account_sid, auth_token)

  #   @city = params[:FromCity].capitalize
  #   @state = params[:FromState]

  #   render 'process_sms.xml.erb', :content_type => 'text/xml'

  # end

  # GET /polls/1
  # GET /polls/1.json
  def show
    @poll = Poll.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poll }
    end
  end

  # GET /polls/new
  # GET /polls/new.json
  def new
    @poll = Poll.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll }
    end
  end

  # GET /polls/1/edit
  def edit
    @poll = Poll.find(params[:id])
  end

  # POST /polls
  # POST /polls.json
  def create
    account_sid = 'AC14aa346613c89fec467663aad46c05a2'
    auth_token = '0e43d0a04e110f7faa2692e388b0c7f5'
   
    client = Twilio::REST::Client.new(account_sid, auth_token)

    @city = params[:FromCity].capitalize
    @state = params[:FromState]

    render 'process_sms.xml.erb', :content_type => 'text/xml'
  end

  # PUT /polls/1
  # PUT /polls/1.json
  def update
    @poll = Poll.find(params[:id])

    respond_to do |format|
      if @poll.update_attributes(params[:poll])
        format.html { redirect_to @poll, notice: 'Poll was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polls/1
  # DELETE /polls/1.json
  def destroy
    @poll = Poll.find(params[:id])
    @poll.destroy

    respond_to do |format|
      format.html { redirect_to polls_url }
      format.json { head :no_content }
    end
  end
end
