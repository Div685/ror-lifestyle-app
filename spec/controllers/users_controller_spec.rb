require 'rails_helper'

RSpec.describe UsersController, type: :feature, order: :defined do
  before :each do
    Article.create(title: 'New Article', text: 'Article')
  end
  let(:user_params) do
    { name: 'Divyesh' }
  end
  let(:user) { User.new(user_params) }

  describe 'SignUp Process' do
    it 'Create User' do
      sign_up('Div')
      expect(page).to have_current_path('/articles/new')
    end
  end

  describe 'SignIn Process' do
    it 'Sign in User' do
      visit new_session_path
      fill_in :name, with: 'Divyesh'
      click_button('Log In')
      visit new_article_path
      expect(page).to have_current_path('/sign_in')
    end
  end
end
