require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.create(user: nil, post: nil, text: 'You need 3 correct params to get a validation') }

  before { subject.save }

  it 'author_id should be present' do
    expect(subject).to_not be_valid
  end

  it 'post_id should be present' do
    expect(subject).to_not be_valid
  end

  it 'text should be present' do
    expect(subject).to_not be_valid
  end
end
