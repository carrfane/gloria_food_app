require 'rails_helper'

RSpec.describe "MergeRestaurants", type: :request do
  describe "GET /merge_restaurants" do
    it "works! (now write some real specs)" do
      get merge_restaurants_path
      expect(response).to have_http_status(200)
    end
  end
end
