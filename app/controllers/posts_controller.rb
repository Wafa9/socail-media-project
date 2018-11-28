class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

  # def index
  #   @posts = Post.all
  # end

  def new
    @post = Post.new
  end

  # This is to create a new post
  def create
    post = current_user.posts.create(post_params)
    redirect_to post_path(post)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comment = Comment.new
  end

  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body, :image)
  end
end
