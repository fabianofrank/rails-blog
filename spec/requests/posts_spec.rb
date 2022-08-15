require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) { get '/users/26/posts' } # get(:users)

    it 'returns response status success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders template success' do
      expect(response.body).to match(/head/)
    end

    it 'shows placeholder text success' do
      expect(response.body).to include('head')
    end
  end
end
