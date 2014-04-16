class FollowingsController < ApplicationController
  def create
    @user = User.find(params[:following][:user_id])
    @following = User.find(params[:following][:follower_id])
    @followinger = Following.create(user_id: @user.id, follower_id: @following.id)
    redirect_to :back
  end

  private
  def following_params
    params.require(:following).permit(:user_id, :follower_id)
  end
end
