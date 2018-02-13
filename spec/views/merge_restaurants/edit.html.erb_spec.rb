require 'rails_helper'

RSpec.describe "merge_restaurants/edit", type: :view do
  before(:each) do
    @merge_restaurant = assign(:merge_restaurant, MergeRestaurant.create!(
      :restaurant_key => "MyString",
      :connection => nil,
      :status => false
    ))
  end

  it "renders the edit merge_restaurant form" do
    render

    assert_select "form[action=?][method=?]", merge_restaurant_path(@merge_restaurant), "post" do

      assert_select "input[name=?]", "merge_restaurant[restaurant_key]"

      assert_select "input[name=?]", "merge_restaurant[connection_id]"

      assert_select "input[name=?]", "merge_restaurant[status]"
    end
  end
end
