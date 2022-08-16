class PostsController < ApplicationController
  def index
    # @posts = User.find(params[:user_id]).posts
    @posts = Post.where(user_id: params[:user_id])
  end

  def show
    @post = Post.find_by(id: params[:id])
  end
end
