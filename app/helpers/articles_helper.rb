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
      image_tag(url_for(article), alt: 'img-hero', class: 'img-article')
    else
      image_tag('https://vitalplanet.com/wp-content/uploads/84726686_s.jpg', alt: 'img-hero-alt')
    end
  end

  def image_check(article)
    if article.nil? || article.empty?
      image_tag(
        'https://besthqwallpapers.com/Uploads/16-7-2018/59527/thumb2-american-bulldog-a-large-white-brown-dog-pets-dog-breeds.jpg',
        alt: 'img-hero'
      )
    else
      image_tag(article, alt: 'Wrong Image-link')
    end
  end
end
