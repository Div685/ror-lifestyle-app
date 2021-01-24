class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :categories_per_articles, foreign_key: :article_id
  has_many :categories, through: :categories_per_articles

  validates_presence_of :title, :text, :image
  validates :title, length: { minimum: 3, maximum: 90 }
end
