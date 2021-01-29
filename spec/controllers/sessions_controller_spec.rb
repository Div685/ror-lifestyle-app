require 'rails_helper'

RSpec.describe 'Sign in User', type: :feature, order: :defined do
  describe 'login user' do
    let(:user) { User.create(name: 'Divyesh') }
    
    scenario 'sign in successfully' do
      visit new_session_path
      fill_in :name, with: 'Divyesh'
      click_button('Log In')
      visit new_article_path
      expect(page).to have_current_path('/articles/new')
    end

  
  end
end