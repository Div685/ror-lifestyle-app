class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'authorId'
  has_many :votes, class_name: 'Vote', foreign_key: 'articleId'
  has_many :categories_per_articles, class_name: 'CategoriesPerArticle'
  has_many :categories, through: :categories_per_articles, source: :category

  validates_presence_of :title, :text, :image, :authorId
  validates :title, length: { minimum: 3, maximum: 90 }
end
