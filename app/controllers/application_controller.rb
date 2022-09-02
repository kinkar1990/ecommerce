class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if:  :devise_controller?
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
    def after_sign_in_path_for(resource)
        puts current_user
=begin
        if resource.admin? #Assuming there is such a function
          root_path
        else
          session[:previous_url] || root_path
        end
=end
      end
end
