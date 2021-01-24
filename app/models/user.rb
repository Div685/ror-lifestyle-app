class User < ApplicationRecord
  has_many :articles, class_name: 'Article', foreign_key: :authorId 
  has_many :votes

  validates :name, presence: true,  length: { minimum: 3, maximum: 16 }
end
