class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to article_path(@comment.article_id), notice: 'Comment is created'
    else
      redirect_to articles_path, alert: @comment.errors.full_messages.join('. ').to_s
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
