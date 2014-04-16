class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def signup_confirmation(user)
    @user = user
    mail to: user.email, subject: "Sign Up Confirmation"
  end

  def mention_confirmation(user, qwit)
    @user = user
    @qwit = qwit
    mail to: user.email, subject: "You were mentioned on Qwitter!"
  end

  def follow_confirmation(user, follower)
    mail to: follower.email, subject: "You were followed on Qwitter by #{@user.name}!"
  end
end
