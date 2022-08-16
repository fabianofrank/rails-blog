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
    before(:each) { get '/users/:id/posts/:id' } # get(:users)

    it 'returns response status success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders template success' do
      expect(response.body).to match(/body/)
    end

    it 'shows placeholder text success' do
      expect(response.body).to render_template('show')
    end
  end
end
