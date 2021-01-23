class Article < ApplicationRecord
  belongs_to :authorId, class_name: 'User'
  has_many :votes
  has_many :categories_per_articles, foreign_key: :articleId
  has_many :categories, through: :categories_per_articles

  validates_presence_of :title, :text, :image
  validates :title, length: { minimum: 3, maximum: 90 }
end
