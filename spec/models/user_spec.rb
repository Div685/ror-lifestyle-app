require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:articles).with_foreign_key('authorId') }
    it { should have_many(:votes) }
    it { should have_many(:comments) }
  end

  describe 'Validateions' do
    context 'When name is nil' do
      it { should validate_presence_of(:name) }
    end

    context 'when name is less than 3 characters' do
      it { should validate_length_of(:name).is_at_least(3).is_at_most(16) }
    end

    context 'when name is not unique' do
      it { should validate_uniqueness_of(:name) }
    end
  end
end
