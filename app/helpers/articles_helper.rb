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
      image_tag(url_for(article))
    else
      image_tag(url_for('https://vitalplanet.com/wp-content/uploads/84726686_s.jpg'), alt: "img-hero")
    end
  end
end

# <% if @article.img.exists? %>
#   <img src="<%= url_for(@article.img) %>" alt="img-hero">
# <% else %>
#   <img src="https://vitalplanet.com/wp-content/uploads/84726686_s.jpg" alt="img-hero">
# <% end %>