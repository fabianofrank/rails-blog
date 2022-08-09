class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :increment
  after_destroy :decrement

  private

  def increment
    post.increment!(:comments_counter)
  end

  def decrement
    post.decrement!(:comments_counter)
  end
end
