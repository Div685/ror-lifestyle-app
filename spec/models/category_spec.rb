require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Associations' do
    it { should have_many(:categories_per_articles) }
    it { should have_many(:articles).through(:categories_per_articles) }
  end

  describe 'Validations' do
    context 'when name and priority is nil' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:priority) }
    end

    context 'when length of name is less than 3' do
      it { should validate_length_of(:name).is_at_least(3) }
    end
  end
end
