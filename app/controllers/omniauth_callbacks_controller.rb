class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def meetup
    @user = User.from_omniauth(request.env['omniauth.auth'])
    sign_in_and_redirect @user
  end
end
