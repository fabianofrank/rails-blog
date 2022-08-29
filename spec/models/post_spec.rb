require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    user = User.new(name: 'Frank', photo: 'https://unsplash.com/photos/1CORKh7x6Z4',
                    bio: 'Engineer from Brazil. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
      Sed in mi ac lacus fermentum malesuada at non nunc.')
    Post.new(user: user, title: 'YOW!',
             text: 'Fusce vel leo nulla. Morbi sit amet ornare metus, a efficitur turpis.
             Aenean hendrerit leo a urna imperdiet.')
  end

  before { subject.save }

  it 'title should be present' do
    expect(subject).to be_valid
  end

  it 'title should not be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'text length should be valid' do
    expect(subject).to be_valid
  end

  it 'text length should not be valid' do
    subject.text = 'Fusce vel leo nulla. Morbi sit amet ornare metus, a efficitur turpis.
    Aenean hendrerit leo a urna imperdiet, sit amet egestas enim convallis.
    Duis dictum ex enim, quis varius metus convallis in.
    Fusce vel leo nulla. Morbi sit amet ornare metus, a efficitur turpis.
    Aenean hendrerit leo a urna imperdiet, sit amet egestas enim convallis.
    Duis dictum ex enim, quis varius metus convallis in.'
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be valid' do
    expect(subject).to be_valid
  end

  it 'comments_counter should not be valid' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be valid' do
    expect(subject).to be_valid
  end

  it 'likes_counter should not be valid' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end
end
