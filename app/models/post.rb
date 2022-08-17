class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  after_save :increment_posts
  after_destroy :decrement_posts

  attribute :comments_counter, :integer, default: 0
  attribute :likes_counter, :integer, default: 0

  validates :title, presence: true
  validates :text, length: { maximum: 250 }
  validates :comments_counter, :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def recent_comments
    comments.last(3)
  end

  private

  def increment_posts
    user.increment!(:posts_counter)
  end

  def decrement_posts
    user.decrement!(:posts_counter)
  end
end
