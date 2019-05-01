require 'rails_helper'

RSpec.describe "Posts", type: :request do
  let(:user) {create(:user)}
  let!(:posts){create_list(:post,10,user_id:user.id)}
  describe 'GET /posts' do
    before do
      sign_in user
      get '/posts'
    end
    it ' must return http status 200' do
      expect(response).to have_http_status(200)
    end
    it 'must return all the posts ' do
      expect(assigns(:posts).size).to eq(10)
    end
  end


end