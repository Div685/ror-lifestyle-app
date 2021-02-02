module VotesHelper
  def vote_article(article)
    if current_user
      vote = Vote.find_by(article: article, user: current_user)
      if vote
        content_tag :span, "#{current_user.name}, voted ", class: 'text-danger text-capitalize mr-2'
      else
        link_to('Vote', article_votes_path(article_id: article.id), method: :post, class: 'btn vote-button')
      end
    else
      link_to('Vote', new_session_path, class: 'btn vote-button')
    end
  end
end
