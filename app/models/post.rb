class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  after_save :increment
  after_destroy :decrement

  attribute :comments_counter, :integer, default: 0
  # attribute :likes_counter, :integer, default: 0

  def recent_comments
    comments.last(5)
  end

  private

  def increment
    user.increment!(:posts_counter)
  end

  def decrement
    user.decrement!(:posts_counter)
  end
end
