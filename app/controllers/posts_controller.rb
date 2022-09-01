class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments, :likes)
  end

  def show
    @post = Post.includes(:comments, :likes).find(params[:id])
    @user = User.find(params[:user_id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:success] = '...created!'
      redirect_to user_posts_path(current_user.id)
    else
      flash[:error] = '...with problems, try again...'
      render :new
    end
  end

  def destroy
    @post = Post.includes(:comments, :likes).find_by(id: params[:id])
    @post.destroy
    redirect_to user_posts_path(current_user.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
