class ApplicationController < ActionController::Base
  #before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :set_dark_mode
  
  def set_dark_mode
    session[:dark_mode] = params[:dark_mode] == 'true' if params[:dark_mode].present?
  end

  def toggle_dark_mode
    session[:dark_mode] = !session[:dark_mode]
    redirect_back(fallback_location: root_path)
  end
  

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:email, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end