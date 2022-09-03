class Api::V1::SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    user = User.where(email: params[:email]).first
    if user.valid_password?(params[:password])
      render json: user.as_json(only: %i[id email]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
    @user = current_user
    if @user
      sign_out
      render json: { status: :success, user: "#{@user.name} logged out" }
    else
      render json: { status: :failure, error: 'Could not find user to sign out' }
    end
  end
end
