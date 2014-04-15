require 'spec_helper'

describe Qwit do
  it { should belong_to :user }
  it { should validate_presence_of :post }
end
