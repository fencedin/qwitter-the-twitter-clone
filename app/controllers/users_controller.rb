class UsersController < ApplicationController
before_action :authenticate_user!
  def index

  end

private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
