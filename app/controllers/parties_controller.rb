class PartiesController < ApplicationController

  before_filter :authenticate_user!, :except => [:show, :index]

  def index
    if params[:search] 
      @parties = Party.search(params[:search])

    elsif params[:tag]
      @parties = Party.tagged_with(params[:tag])
    else
      @parties = Party.find_with_reputation(:votes, :all, order: "votes desc")
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parties }
    end
  end

  # GET /parties/1
  # GET /parties/1.json
  def show
    @party = Party.find(params[:id])

    respond_to do |format|
      format.html# show.html.erb
      format.json { render json: @party }
    end
  end

  # GET /parties/new
  # GET /parties/new.json
  def new
    @party = Party.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @party }
    end
  end

  # GET /parties/1/edit
  def edit
    @party = Party.find(params[:id])
  end

  # POST /parties
  # POST /parties.json
  def create
    # binding.pry
    @party = Party.new(params[:party])

    respond_to do |format|
      if @party.save
        format.html { redirect_to @party, notice: 'Party was successfully created.' }
        format.json { render json: @party, status: :created, location: @party }
      else
        format.html { render action: "new" }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  def vote
    value = params[:type] == "up" ? 1 : -1
    @party = Party.find(params[:id])
    @party.add_or_update_evaluation(:votes, value, current_user)
    redirect_to :back, notice: "Thanks for voting"
  end

  # PUT /parties/1
  # PUT /parties/1.json
  def update
    @party = Party.find(params[:id])

    respond_to do |format|
      if @party.update_attributes(params[:party])
        format.html { redirect_to @party, notice: 'Party was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parties/1
  # DELETE /parties/1.json
  def destroy
    @party = Party.find(params[:id])
    @party.destroy

    respond_to do |format|
      format.html { redirect_to parties_url }
      format.json { head :no_content }
    end
  end

end
