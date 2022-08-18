class LikesController < ApplicationController
  def create
    @like = Likes.new(like_params)
    @like.user_id = current_user.id
    @like.post_id = params[:post_id]
    if !@like.save
      flash[:notice] = @like.error.full_messages.to_sentence
    end
    redirect_to @like.post

  end

  def destroy
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
