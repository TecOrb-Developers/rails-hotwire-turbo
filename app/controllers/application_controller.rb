class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:fname, :lname, :email, :password, :password_confirmation) }
  end

  def after_sign_in_path_for(_resource)
    root_path
  end

  def after_sign_out_path_for(_resource_or_scope)
    root_path
  end
end
