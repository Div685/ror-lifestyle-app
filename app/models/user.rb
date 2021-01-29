class User < ApplicationRecord
  has_many :articles, class_name: 'Article', foreign_key: :authorId
  has_many :votes, foreign_key: :userId, class_name: 'Vote'
  has_many :comments, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3, maximum: 16 }
  validates :name, uniqueness: true
end
