require 'rails_helper'

RSpec.describe UsersController, type: :feature, order: :defined do
  let(:user_params) do
    { name: 'Divyesh' }
  end
  let(:user) { User.new(user_params) }

  describe 'SignUp Process' do
    it 'Create User' do
      sign_up('Div')
      user.save
      expect(page).to have_content('User was Successfully created')
    end
  end

  describe 'SignIn Process' do
    it 'Sign in User' do
      login('Div')
      visit new_article_path
      expect(page).to have_current_path('/articles/new')
    end
  end

  
end 