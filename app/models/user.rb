class User < ApplicationRecord
  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  attribute :posts_counter, :integer, default: 0

  def recent_posts
    posts.last(3)
  end
end
