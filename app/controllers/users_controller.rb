class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @qwit = Qwit.new
    @following = Following.new
    @current_followers = current_user.followers
    @not_following = User.all - @current_followers
  end

private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
