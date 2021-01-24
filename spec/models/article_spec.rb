require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Associations' do
    it { should belong_to(:author).class_name(:User) }
  end
end
