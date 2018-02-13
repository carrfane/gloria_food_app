require 'rails_helper'

RSpec.describe "merge_restaurants/index", type: :view do
  before(:each) do
    assign(:merge_restaurants, [
      MergeRestaurant.create!(
        :restaurant_key => "Restaurant Key",
        :connection => nil,
        :status => false
      ),
      MergeRestaurant.create!(
        :restaurant_key => "Restaurant Key",
        :connection => nil,
        :status => false
      )
    ])
  end

  it "renders a list of merge_restaurants" do
    render
    assert_select "tr>td", :text => "Restaurant Key".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
