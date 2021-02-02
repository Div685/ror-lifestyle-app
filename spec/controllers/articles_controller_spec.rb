require 'rails_helper'

RSpec.describe ArticlesController, type: :feature do
  let(:user) { User.create(name: 'Divyesh') }
  let(:article_params) do
    {
      authorId: user,
      title: 'Article',
      text: 'something'
    }
  end
  let(:article) do
    Article.new(article_params)
  end

  describe 'Article Management' do
    before :each do
      visit new_user_path
      fill_in 'user[name]', with: 'Divyesh'
      click_button('Create User')
    end

    it 'Create Article' do
      visit new_article_path
      fill_in :article_title, with: 'Article'
      fill_in :article_text, with: 'something'
      click_button('submit')

      expect(page).to have_current_path('/articles/new')
    end
  end
end
