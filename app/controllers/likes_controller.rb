class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(post_id: params[:post_id])
    @like.save
    redirect_to request.referrer
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to request.referrer
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end
end
