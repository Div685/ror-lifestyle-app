class User < ApplicationRecord
  has_many: articles, foreign_key: :authorId, class_name: 'Article'
end
