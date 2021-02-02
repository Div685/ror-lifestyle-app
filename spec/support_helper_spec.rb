module SupportHelperSpec
  def sign_up(name)
    visit new_user_path
    fill_in 'user[name]', with: name
    click_button('Create User')
  end

  def login(name)
    visit new_session_path
    fill_in 'name', with: name
    click_button('Log In')
  end
end
