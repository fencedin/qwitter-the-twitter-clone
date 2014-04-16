class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  has_many :qwits
  has_many :followings, :foreign_key => "user_id", :class_name => "Following"
  has_many :followers, :through => :followings

  after_create :send_welcome_message

  def send_welcome_message
    UserMailer.signup_confirmation(self).deliver
  end

end
