class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def meetup
    @user = User.from_omniauth(request.env['omniauth.auth'])
    if @user.email.empty? || @user.document.empty?
      session[:finish_user_id] = @user.id
      render 'users/finish'
    else
      sign_in_and_redirect @user
    end
  end
end
