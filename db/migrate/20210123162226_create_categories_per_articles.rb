class CreateCategoriesPerArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :categories_per_articles do |t|
      t.integer :categoryId
      t.integer :articleId
      
      t.timestamps
    end
  end
end
