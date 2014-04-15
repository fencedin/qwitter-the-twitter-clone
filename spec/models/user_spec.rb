require 'spec_helper'

describe User do
  it { should validate_presence_of :name }
  it { should have_many :qwits }
  context 'signup confirmation email' do
    it 'sends a welcome email' do
      user = build(:user, :email => Faker::Internet.email)
      expect(UserMailer).to receive(:signup_confirmation).with(user)
      user.save
    end
  end
end
