class ImagesController < ApplicationController

    def create
    	# binding.pry
        @image = Image.new(params[:image])
        @image.save!
        render @image
    end

    def new
    binding.pry
    end

    def show
    	@image = Image.find(params[:id])
    end

    def destroy
      @image = Image.find(params[:id])
      @image.destroy

      respond_to do |format|
        format.html { redirect_to images_url }
        format.json { head :no_content }
      end
    end

    def index
      @images = Image.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @images }
      end
    end

end

