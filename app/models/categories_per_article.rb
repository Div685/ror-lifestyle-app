class CategoriesPerArticle < ApplicationRecord
  belongs_to :category, class_name: 'Category'
  belongs_to :article, class_name: 'Article'
end
