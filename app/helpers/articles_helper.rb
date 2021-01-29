module ArticlesHelper
  def comment_form
    if current_user
      render(partial: 'comments/form')
    end
  end

  def vote_plural
    if @article.votes.count == 1
      content_tag(:span, "Total Vote: #{@article.votes.count}" )
    else
      content_tag(:span, "Total Votes: #{@article.votes.count}" )
    end
  end
end
# \   <% if @article.votes.count == 1 %>
# <span class="m-3 ">Total Vote: <%= @article.votes.count %> </span>
# <% else %>
# <span class="m-3 ">Total Votes: <%= @article.votes.count %> </span>
# <% end %>