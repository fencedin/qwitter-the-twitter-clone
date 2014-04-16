class Qwit < ActiveRecord::Base
  belongs_to :user
  validates :post, presence: true

  after_create :send_mention_mail

  def mention
    user_array = []
    name_array = []
    user_object_array = []
    User.all.each do |user|
      user_array << user.name
    end
    user_array.each do |user|
      if self.post.include?("&#{user}")
        name_array << user
      end
    end
    name_array.each do |name|
      user_object_array << User.find_by_name(name)
    end
    user_object_array
  end

  def send_mention_mail
    self.mention.each do |user|
      UserMailer.mention_confirmation(user, self).deliver
    end
  end
end

