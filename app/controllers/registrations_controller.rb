class RegistrationsController < Devise::RegistrationsController
	before_filter :configure_permitted_parameters, if: :devise_controller?
	
	protected

	def after_sign_up_path_for(resource)
		user_path(current_user)
	end

  # def after_sign_in_path_for(resource)
  #   current_user_path
  # end

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) do |user|
  		user.permit(:avatar, :name, :location, :email, :password, :password_confirmation)
  	end 

  	devise_parameter_sanitizer.for(:account_update) do |user|
  		user.permit(:avatar, :name, :location, :email, :password, :password_confirmation, :current_password)
  	end 
  end
end 