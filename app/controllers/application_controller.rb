class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        home_top_path
    end    

    protected

    def configured_permitted_paramerers
        devise_parameter_sanitizeer.permit(:sign_up, keys: [:name, :email])
        devise_parameter_sanitizeer.permit(:sign_up, keys: [:name])
    end    
end
