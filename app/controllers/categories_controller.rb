class CategoriesController < ApplicationController
  before_action :logged_in?, only: %i[index show create new]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to new_article_path, notice: 'Category was successfully Created!' }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @category = Category.includes(articles: :author).find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to root_path, notice: 'Category Successfully Destroyed'
  end

  private

  def category_params
    params.require(:category).permit(:name, :priority)
  end
end
