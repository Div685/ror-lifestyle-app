module ApplicationHelper
  def nav_signup
    if current_user
      link_to(current_user.name, root_path, class: 'login') +
        link_to('Sign Out', sign_out_path, class: 'login')
    else
      link_to('Login', new_session_path, class: 'login') + '|'.html_safe +
        link_to('Register', new_user_path, class: 'login') +
        "<i class='search-icon fas fa-search d-none d-md-block'></i>".html_safe
    end
  end

  def nav_article
    link_to('Create Article', new_article_path, class: 'btn signup-button mr-1 text-white') if current_user
  end
end
