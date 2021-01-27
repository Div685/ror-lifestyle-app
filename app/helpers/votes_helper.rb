module VotesHelper
  def vote_article(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      content_tag :span, "#{ current_user.name }, you have aready voted"
    else
      link_to('Vote', article_votes_path(article_id: article.id), method: :post)
    end
  end
end
