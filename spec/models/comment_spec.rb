require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:article) }
  end

  describe 'Validation' do
    msg = '200 characters in comment is the maximum allowed.'
    it { should validate_presence_of(:content) }
    it { should validate_length_of(:content).is_at_most(200).with_long_message(msg.to_s) }
  end
end
