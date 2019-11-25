class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:emp, :admin])
    devise_parameter_sanitizer.permit(:account_update, keys: [:emp, :admin])
  end

  def after_sign_in_path_for(resource)
    if (resource.admin)
      stored_location_for(resource) || admin_show_url
    else
      stored_location_for(resource) || "/"
    end
  end
end
