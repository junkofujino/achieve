class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_facebook_oauth(request.env["ommiauth.auth"],current_user)

    if @user.persisted?
      binding.pry
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
      binding.pry
      sign_in_and_redirect @user, event: :authentication
      binding.pry
    else
      binding.pry
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      binding.pry
      redirect_to new_user_registration_url
      binding.pry
    end
  end
end
