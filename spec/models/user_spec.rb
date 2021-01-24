require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:articles).with_foreign_key('authorId') }
  end
end
