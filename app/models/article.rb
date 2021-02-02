class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'authorId'

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }

  has_many :votes, class_name: 'Vote', foreign_key: 'articleId'
  has_many :categories_per_articles, class_name: 'CategoriesPerArticle'
  has_many :categories, through: :categories_per_articles, source: :category
  has_many :comments, dependent: :destroy

  has_one_attached :img

  validates_presence_of :title, :text
  validates :title, length: { minimum: 3, maximum: 90 }
  validate :check_file_presence

  accepts_nested_attributes_for :categories_per_articles

  def self.max_votes
    result = Vote.all.group(:articleId).count.max_by { |_k, v| v }.first
    Article.find(result)
  end

  def check_file_presence
    if img.attached? && !img.content_type.in?(%w[image/jpeg image/png image/jpg])
      errors.add(:img, 'file must be jpeg or png')
    elsif img.attached? == false
      errors.add(:img, 'required')
    end
  end
end
