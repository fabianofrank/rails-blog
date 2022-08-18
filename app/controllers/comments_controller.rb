class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: params[:user_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = params[:user_id]
    @comment.post_id = params[:post_id]
    if @comment.save
      flash[:success] = '...created!'
      redirect_to user_post_path(@comment.user_id, @comment.post_id)
    else
      flash[:error] = '...with problems, try again...'
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
