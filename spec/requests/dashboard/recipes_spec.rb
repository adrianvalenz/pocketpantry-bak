require 'rails_helper'

RSpec.describe "Dashboard::Recipes", type: :request do
  describe "GET /index" do
    context "when logged in" do
      it "returns http success" do
        @user = FactoryBot.create(:user)
        login_as(@user)
        get "/dashboard/recipes"
        expect(response).to have_http_status(:success)
      end
    end

    context "when logged out" do
      it "redirects to login page" do
        get "/dashboard/recipes"
        expect(response).to have_http_status(:found)
        follow_redirect!
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
