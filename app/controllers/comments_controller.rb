class CommentsController < ApplicationController

    def create
        @comment = Comment.new(params[:comment])
        # assigns user id to the comment 
        #@comment.user_id = current_user.id
        @comment.save!
        render @comment
    end
end
