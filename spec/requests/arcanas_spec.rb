require 'rails_helper'

RSpec.describe "Arcanas", type: :request do
  describe "GET /arcanas" do
    it "works! (now write some real specs)" do
      get arcanas_path
      expect(response).to have_http_status(200)
    end
  end
end
