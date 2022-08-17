class User < ApplicationRecord
  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  attribute :posts_counter, :integer, default: 0

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def recent_posts
    posts.last(2)
  end
end
