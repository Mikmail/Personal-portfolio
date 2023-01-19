class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  private

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :current_password])
  end

  def sign_up_params
    params.require(:user).permit(:username,:email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username,:email, :password, :password_confirmation, :current_password)
  end
end