class RenameFieldsForCategoriesPerArticle < ActiveRecord::Migration[6.0]
  def change
    rename_column :categories_per_articles, :categoryId, :category_id
    rename_column :categories_per_articles, :articleId,  :article_id
  end
end
