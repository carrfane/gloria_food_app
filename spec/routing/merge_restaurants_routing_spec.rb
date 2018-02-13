require "rails_helper"

RSpec.describe MergeRestaurantsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/merge_restaurants").to route_to("merge_restaurants#index")
    end

    it "routes to #new" do
      expect(:get => "/merge_restaurants/new").to route_to("merge_restaurants#new")
    end

    it "routes to #show" do
      expect(:get => "/merge_restaurants/1").to route_to("merge_restaurants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/merge_restaurants/1/edit").to route_to("merge_restaurants#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/merge_restaurants").to route_to("merge_restaurants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/merge_restaurants/1").to route_to("merge_restaurants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/merge_restaurants/1").to route_to("merge_restaurants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/merge_restaurants/1").to route_to("merge_restaurants#destroy", :id => "1")
    end

  end
end
