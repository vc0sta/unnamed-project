require 'rails_helper'

RSpec.describe "Versions", type: :request do
  describe "GET /index" do
    let(:expected_response) { { version: "1" } }

    xit "returns http success" do
      get "/version"
      
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body, symbolize_names: true)).to eq(expected_response)
    end
  end
end
