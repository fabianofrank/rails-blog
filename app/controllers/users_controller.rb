class UsersController < ApplicationController
  def index
    @users = User.order(:id)
  end

  def show
    @user = User.find_by(id: params[:id])
  end
end
