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
end
