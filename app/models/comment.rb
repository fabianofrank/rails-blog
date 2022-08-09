class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :increment_comments
  after_destroy :decrement_comments

  private

  def increment_comments
    post.increment!(:comments_counter)
  end

  def decrement_comments
    post.decrement!(:comments_counter)
  end
end
