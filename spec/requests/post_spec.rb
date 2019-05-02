require 'rails_helper'

RSpec.describe "Posts", type: :request do
  let(:user) {create(:user)}
  let(:post_category){create(:post_category)}
  let!(:posts){create_list(:post,10,user_id:user.id,post_category_id:post_category.id)}
  describe 'GET /posts' do
    before do
      sign_in user
      get '/posts'
    end
    it ' must return http status 200' do
      expect(response).to have_http_status(200)
    end
  end


end