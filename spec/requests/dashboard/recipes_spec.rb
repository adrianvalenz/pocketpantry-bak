require 'rails_helper'

RSpec.describe "Dashboard::Recipes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/dashboard/recipes/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/dashboard/recipes/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/dashboard/recipes/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/dashboard/recipes/new"
      expect(response).to have_http_status(:success)
    end
  end

end
