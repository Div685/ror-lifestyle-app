class Category < ApplicationRecord
  has_many :categories_per_articles, foreign_key: :category_id
  has_many :articles, through: :categories_per_articles

  validates_presence_of :name, :priority
  validates :name, length: { minimum: 3 }
end
