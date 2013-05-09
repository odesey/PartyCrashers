class CommentsController < ApplicationController

    def create
        @comment = Comment.new(params[:comment])
        @comment.save!
        render @comment
    end
end
