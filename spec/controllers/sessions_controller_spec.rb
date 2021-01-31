require 'rails_helper'

RSpec.describe 'Sign in User', type: :feature, order: :defined do
  describe 'login user' do
    before :each do
      User.create(name: 'Divyesh')
    end

    scenario 'sign in successfully' do
      visit new_session_path
      fill_in :name, with: 'Divyesh'
      click_button('Log In')
      visit new_article_path
      sleep 3
      expect(page).to have_current_path('/articles/new')
    end
  end
end
