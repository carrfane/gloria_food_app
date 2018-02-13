require 'rails_helper'

RSpec.describe "merge_restaurants/new", type: :view do
  before(:each) do
    assign(:merge_restaurant, MergeRestaurant.new(
      :restaurant_key => "MyString",
      :connection => nil,
      :status => false
    ))
  end

  it "renders new merge_restaurant form" do
    render

    assert_select "form[action=?][method=?]", merge_restaurants_path, "post" do

      assert_select "input[name=?]", "merge_restaurant[restaurant_key]"

      assert_select "input[name=?]", "merge_restaurant[connection_id]"

      assert_select "input[name=?]", "merge_restaurant[status]"
    end
  end
end
