class Following < ActiveRecord::Base
  belongs_to :user, :foreign_key => "user_id", :class_name => "User"
  belongs_to :follower, :foreign_key => "follower_id", :class_name => "User"

  after_create :send_follow_confirmation

  def send_follow_confirmation
    user = User.find(params[:following][:user_id])
    follower = User.find(params[:following][:follower_id])
    UserMailer.follow_confirmation(self, follower).deliver
  end
end
