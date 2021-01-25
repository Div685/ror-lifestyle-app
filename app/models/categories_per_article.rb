class CategoriesPerArticle < ApplicationRecord
  belongs_to :category, class_name: 'Category', foreign_key: :categoryId
  belongs_to :article, class_name: 'Article', foreign_key: :articleId
end
