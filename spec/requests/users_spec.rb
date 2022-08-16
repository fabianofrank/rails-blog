require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:each) { get users_path } # get(:users)

    it 'returns response status success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders template success' do
      expect(response.body).to match(/Frank/)
    end

    it 'shows placeholder text success' do
      expect(response.body).to render_template('index')
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/:id' } # get(:users)

    it 'returns response status success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders template success' do
      expect(response.body).to match(/Frank/)
    end

    it 'shows placeholder text success' do
      expect(response.body).to render_template('show')
    end
  end
end
