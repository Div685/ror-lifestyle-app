class User < ApplicationRecord
  has_many :articles, foreign_key: :authorId, class_name: 'Article'
  has_many :votes

  validates :name, presence: true,  length: { minimum: 3, maximum: 16 }
end
