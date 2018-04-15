class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    @user = User.from_omniauth(request.env["omniauth.auth"].except("extra"))

    auth = request.env["omniauth.auth"]
    @user.token = auth.extra.access_token.token
    @user.secret = auth.extra.access_token.secret

    @user.save

    if @user.persisted?
      sign_in_and_redirect @user
    else
      session["devise.user_attributes"] = @user.attributes
      redirect_to new_user_registration_url
    end
  end
end
