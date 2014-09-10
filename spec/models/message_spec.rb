require 'rails_helper'

RSpec.describe Message, :type => :model do
  let(:message) { FactoryGirl.create(:message) }

  subject { message }

  it { should belong_to(:sender) }
  it { should belong_to(:recipient) }

  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:sender_id) }
  it { should validate_presence_of(:recipient_id) }
  
end
