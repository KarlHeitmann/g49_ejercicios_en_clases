class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? # HACK revise esto: https://github.com/heartcombo/devise#strong-parameters 

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :apellidos, :telefono])
  end
end
