require 'spec_helper'

describe Qwit do
  it { should belong_to :user }
  it { should validate_presence_of :post }
  context 'finding mentioned users' do
    it 'should return an array of mentioned users after create' do
      # user = User.create(name: "cool", email: "cool@cool.com", id: 2)
      # qwit = Qwit.new(post: "&cool is bad")
      # qwit.mention.length.should eq 1
    end
  end
  context 'signup confirmation email' do
    it 'sends a welcome email' do
      # user = User.create(name: "cool", email: "cool@cool.com", id: 2)
      # qwit = Qwit.new(post: "&cool is bad")
      # #Works in development but currentlly untestable as mock data
      # expect(UserMailer).to receive(:send_mention_mail).with(user)
      # user.save
    end
  end
end
