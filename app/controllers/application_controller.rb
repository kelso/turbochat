class ApplicationController < ActionController::Base
  # skip_before_action :verify_authenticity_token # TODO: remove
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:pfp])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[pfp room_id])
  end
end
