require 'rails_helper'

RSpec.describe "merge_restaurants/show", type: :view do
  before(:each) do
    @merge_restaurant = assign(:merge_restaurant, MergeRestaurant.create!(
      :restaurant_key => "Restaurant Key",
      :connection => nil,
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Restaurant Key/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
