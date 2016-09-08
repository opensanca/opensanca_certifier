class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def finish
    @user = User.find(session[:finish_user_id])
    if @user.update_attributes(user_params)
      sign_in_and_redirect @user
    else
      render 'finish'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :document)
  end
end
