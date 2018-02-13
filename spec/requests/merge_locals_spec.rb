require 'rails_helper'

RSpec.describe "MergeLocals", type: :request do
  describe "GET /merge_locals" do
    it "works! (now write some real specs)" do
      get merge_locals_path
      expect(response).to have_http_status(200)
    end
  end
end
