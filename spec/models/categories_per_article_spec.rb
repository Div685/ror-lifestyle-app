require 'rails_helper'

RSpec.describe CategoriesPerArticle, type: :model do
  describe 'Associations' do
    it { should belong_to(:article) }
    it { should belong_to(:category) }
  end
end
