class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:city, :first_nsme, :last_name, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:city, :first_nsme, :last_name, :image])
  end
end
