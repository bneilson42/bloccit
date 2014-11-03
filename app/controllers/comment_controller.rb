class CommentsController < ApplicationController

  respond_to :html, :js

  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.new(comment_params)
    @comment.post = @post
    @new_comment = Comment.new

    authorize @comment
    end
  end
