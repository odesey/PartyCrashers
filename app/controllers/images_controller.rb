class ImagesController < ApplicationController

    def create
        @image = Image.new(params[:image])
        @image.save!
        render @image
    end
end

