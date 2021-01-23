class CategoriesPerArticle < ApplicationRecord
  belongs_to :category
  belongs_to :article
end
