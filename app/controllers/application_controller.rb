class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  around_action :switch_locale
  before_action :set_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  protected

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end
    
    def default_url_options(options={})
      {locale: I18n.locale}.merge options
    end

    def configure_permitted_parameters
      attributes = [:avatar,:first_name,:last_name,:user_type,:mobile_num,:address,:language,:mobile_num2]
      devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
      devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end

end