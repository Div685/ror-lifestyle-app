class Vote < ApplicationRecord
  validates :userId, uniqueness: { scope: :articleId }

  belongs_to :user, foreign_key: :userId, class_name: 'User'
  belongs_to :article, class_name: 'Article', foreign_key: :articleId
end
