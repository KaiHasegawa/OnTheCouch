class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  #def after_sign_in_path_for(resource)
    #case resource
      #when Admin
      #admins_path
      #when EndUser
      #root_path
    #end
  #end

  #def after_sign_out_path_for(resource_or_scope)
    #if resource_or_scope == :end_user
     #root_path
    #else
     #root_path
    #end
  #end

end
