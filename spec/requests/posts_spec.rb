require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) { get '/users/:id/posts' } # get(:users)

    it 'returns response status success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders template success' do
      expect(response.body).to match(/head/)
    end

    it 'shows placeholder text success' do
      expect(response.body).to render_template('index')
    end
  end

  describe 'GET /show' do
    before(:example) do
      @user = User.create!(name: 'Tom', photo: 'https://unsplash.com/photos/F_0BxGuVvo', bio: 'Teacher from Mexico.')
      @post = @user.posts.create!(title: 'The ephicacy of things', text: 'Wow the ephicacy of things',
                                  comments_counter: 0, likes_counter: 0)
      get user_post_path(@user, @post)
    end

    it 'returns response status success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders template success' do
      expect(response.body).to match(/Wow the ephicacy of things/)
    end

    it 'shows placeholder text success' do
      expect(response.body).to render_template('show')
    end
  end
end
