require 'rails_helper'

RSpec.describe Like, type: :model do
  subject { Like.create(user: nil, post: nil) }

  before { subject.save }

  it 'author_id should be present' do
    expect(subject).to_not be_valid
  end

  it 'post_id should be present' do
    expect(subject).to_not be_valid
  end
end
