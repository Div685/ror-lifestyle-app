class VotesController < ApplicationController
  def index; end

  def create
    @vote = current_user.votes.new(articleId: params[:article_id])

    if @vote.save
      redirect_to articles_path, notice: 'you have voted'
    else
      redirect_to articles_path, notice: 'You can not vote'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, articleId: params[:article_id])
    if vote
      vote.destroy
      redirect_to articles_path, notice: 'You have deleted your vote.'
    else
      redirect_to articles_path, alert: 'You cannot vote article that you did not vote before.'
    end
  end
end
