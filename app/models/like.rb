class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :increment
  after_destroy :decrement

  private

  def increment
    post.increment!(:likes_counter)
  end

  def decrement
    post.decrement!(:likes_counter)
  end
end
