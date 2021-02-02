require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:article) }
  end

  describe 'Validations' do
    it { should validate_uniqueness_of(:userId).scoped_to(:articleId) }
  end
end
