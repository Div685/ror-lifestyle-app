class ArticlesController < ApplicationController
  before_action :logged_in?, only: %i[show]

  def index
    @article = Article.max_votes

    @categories = Category.order('priority ASC').limit(8).includes(:articles).select do |cat|
      cat.articles.count.positive?
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to root_path, notice: 'Article was successfully Created!' }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @article = Article.includes(:comments, :author).find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article.id
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image, category_ids: [])
  end
end
