module ArticlesHelper
  def comment_form
    render(partial: 'comments/form') if current_user
  end

  def vote_plural
    if @article.votes.count == 1
      content_tag(:span, "Total Vote: #{@article.votes.count}", class: 'm-3')
    else
      content_tag(:span, "Total Votes: #{@article.votes.count}", class: 'm-3')
    end
  end

  def image_article(article)
    if article.attached?
      image_tag('https://vitalplanet.com/wp-content/uploads/84726686_s.jpg', alt: 'img-hero')
    else
      image_tag('https://vitalplanet.com/wp-content/uploads/84726686_s.jpg', alt: 'img-hero-alt')
    end
  end
end
