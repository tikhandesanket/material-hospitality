class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected


    def configure_permitted_parameters
      attributes = [:avatar,:first_name,:last_name,:user_type,:mobile_num,:address,:language,:mobile_num2]
      devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
      devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end

end