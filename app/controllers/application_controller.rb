class ApplicationController < ActionController::Base
    before_filter :authenticate_admin!

    before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << [:company, :name, :phone]
      devise_parameter_sanitizer.for(:account_update) << [:company, :name, :phone]
    end


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

#  def after_sign_in_path_for(admin)
#      '/admin_view'
#  end
#
#  def after_sign_in_path_for(user)
#      '/display' #TODO change this from display to employer page
#  end

def after_sign_in_path_for(resource)
  stored_location_for(resource) ||
  if resource.is_a?(Admin)
    admin_view_path
  else
    display_path
  end
end


end
