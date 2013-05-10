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

end

