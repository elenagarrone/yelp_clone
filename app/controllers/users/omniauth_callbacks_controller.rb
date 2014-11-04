class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

	def facebook
		@user = User.from_omniauth(request.env["omniauth.auth"])

		if @user.persisted?
			sign_in_and_redirect @user, :event => :authentication
			set_flash_message(:notice, :success, :kind => "Facebook")
		else
			session["devise.facebook_data"] = request.env["omniauth.auth"]
			redirect_to_new_registration_url
		end
	end
end