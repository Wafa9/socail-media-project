class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def new
    @comments = Comments.all
  end

  def create
    comment = current_user.comments.create(comment_params)
    redirect_to comment_path(comment)
  end

  def destroy
    comment = current_user.comments.find_by(id: params[:id])
    comment.destroy
    redirect_to post_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
