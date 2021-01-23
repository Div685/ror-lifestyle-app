class Article < ApplicationRecord
  belongs_to: authorId, class_name: 'User'
end
