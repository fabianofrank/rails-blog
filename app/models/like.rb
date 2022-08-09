class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :increment_likes
  after_destroy :decrement_likes

  private

  def increment_likes
    post.increment!(:likes_counter)
  end

  def decrement_likes
    post.decrement!(:likes_counter)
  end
end
