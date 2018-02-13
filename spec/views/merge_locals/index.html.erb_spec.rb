require 'rails_helper'

RSpec.describe "merge_locals/index", type: :view do
  before(:each) do
    assign(:merge_locals, [
      MergeLocal.create!(
        :c_local_id => 2,
        :prov_local_id => 3,
        :merge_restaurant => nil,
        :restaurant_token => "Restaurant Token",
        :status => false
      ),
      MergeLocal.create!(
        :c_local_id => 2,
        :prov_local_id => 3,
        :merge_restaurant => nil,
        :restaurant_token => "Restaurant Token",
        :status => false
      )
    ])
  end

  it "renders a list of merge_locals" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Restaurant Token".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
