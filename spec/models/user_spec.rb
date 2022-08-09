require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Frank', photo: 'https://unsplash.com/photos/1CORKh7x6Z4', bio: 'Engineer from Brazil. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in mi ac lacus fermentum malesuada at non nunc.') }

  before { subject.save }

  it 'name should be present' do
    expect(subject).to be_valid
  end

  it 'name should not be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'posts_counter should be valid' do
    expect(subject).to be_valid
  end

  it 'posts_counter should not be valid' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end
end
