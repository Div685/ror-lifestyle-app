require 'rails_helper'

RSpec.describe "Votes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/votes/index"
      expect(response).to have_http_status(:success)
    end
  end

end
