require "rails_helper"

RSpec.describe MergeLocalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/merge_locals").to route_to("merge_locals#index")
    end

    it "routes to #new" do
      expect(:get => "/merge_locals/new").to route_to("merge_locals#new")
    end

    it "routes to #show" do
      expect(:get => "/merge_locals/1").to route_to("merge_locals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/merge_locals/1/edit").to route_to("merge_locals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/merge_locals").to route_to("merge_locals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/merge_locals/1").to route_to("merge_locals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/merge_locals/1").to route_to("merge_locals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/merge_locals/1").to route_to("merge_locals#destroy", :id => "1")
    end

  end
end
