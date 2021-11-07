require 'rails_helper'

RSpec.describe "Mathematics", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/mathematics/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /page1" do
    it "returns http success" do
      get "/mathematics/page1"
      expect(response).to have_http_status(:success)
    end
  end

end
