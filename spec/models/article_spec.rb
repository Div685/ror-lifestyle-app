require 'rails_helper'

RSpec.describe Article, type: :model do
  subject do
    described_class.new(title: '', text: '')
  end
  describe 'Associations' do
    it { should belong_to(:author).class_name(:User) }
    it { should have_many(:votes) }
    it { should have_many(:categories_per_articles) }
    it { should have_many(:categories).through(:categories_per_articles) }
    it { should have_many(:comments) }
  end

  describe 'Validations' do
    context 'when all fields are nil' do
      it 'is not valid ' do
        expect(subject).to_not be_valid
      end
    end

    context 'when length of title is greater less 3 and greater than 90' do
      it { should validate_length_of(:title).is_at_most(90) }
      it { should validate_length_of(:title).is_at_least(3) }
    end

    context 'when title is nil' do
      it { should validate_presence_of(:title) }
    end

    context 'when text is nil' do
      it { should validate_presence_of(:text) }
    end
  end
end
