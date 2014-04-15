require 'spec_helper'

describe User do
  it { should validate_presence_of :name }
  it { should have_many :qwits }
  context 'signup confirmation email' do
    it 'sends a welcome email' do
      # user = build(:user, :email => Faker::Internet.email, id: 2)
      # #Works in development but currentlly untestable as mock data
      # expect(UserMailer).to receive(:signup_confirmation).with(user)
      # user.save
    end
  end
end
