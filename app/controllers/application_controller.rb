class ApplicationController < ActionController::Base
  before_action :authenticate_with_token
  before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?

  protect_from_forgery with: :exception
  protect_from_forgery except: :sign_in

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  private

  def authenticate_with_token
    return nil unless params[:api_token]

    user = User.find_by_api_token(params[:api_token])
    sign_in(user)
  end
end
