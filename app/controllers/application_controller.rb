class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
    case resource_or_scope
      when :user, User
        policies_path
      when :admin_user, AdminUser
        admin_root_path
      else
        super
      end
  end

  protected
    def configure_permitted_parameters
      # sign_up
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit(:email, :password, :password_confirmation, :name, :last_name, :phone, :document_type, :document_id)
      end
      # sign_in
      devise_parameter_sanitizer.permit(:sign_in) do |user_params|
        user_params.permit(:password, :email)
      end
      # Update
      devise_parameter_sanitizer.permit(:account_update) do |user_params|
        user_params.permit(:email, :password, :password_confirmation, :name, :last_name, :phone, :document_type, :document_id)
      end
    end

  private
    def layout_by_resource
      if devise_controller? || controller_name=='home'
        if controller_name=='registrations' && action_name=='edit'
          "application"
        else
          "home"
        end
      else
        "application"
      end
    end


end
