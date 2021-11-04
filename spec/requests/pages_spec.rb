require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /about" do
    it "returns http success" do
      get "/pages/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /product" do
    it "returns http success" do
      get "/pages/product"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /policy" do
    it "returns http success" do
      get "/pages/policy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /term" do
    it "returns http success" do
      get "/pages/term"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /faq" do
    it "returns http success" do
      get "/pages/faq"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/pages/contact"
      expect(response).to have_http_status(:success)
    end
  end

end
