class Category < ApplicationRecord
  has_many :categories_per_articles, class_name: 'CategoriesPerArticle', dependent: :destroy
  has_many :articles, through: :categories_per_articles, source: :article

  validates_presence_of :name, :priority
  validates :name, length: { minimum: 3 }
  validates :name, uniqueness: true
end
