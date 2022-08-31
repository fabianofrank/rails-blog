class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(post_id: params[:post_id])
    flash[:error] = '...with problems, try again...' unless @like.save
    redirect_to request.referrer
  end

  def destroy
    @post = Post.includes(:comments, :likes).find_by(id: params[:id])
    @like = current_user.likes.find_by(post_id: params[:post_id])
    @like.destroy
    redirect_to request.referrer
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
