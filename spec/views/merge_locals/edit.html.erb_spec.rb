require 'rails_helper'

RSpec.describe "merge_locals/edit", type: :view do
  before(:each) do
    @merge_local = assign(:merge_local, MergeLocal.create!(
      :c_local_id => 1,
      :prov_local_id => 1,
      :merge_restaurant => nil,
      :restaurant_token => "MyString",
      :status => false
    ))
  end

  it "renders the edit merge_local form" do
    render

    assert_select "form[action=?][method=?]", merge_local_path(@merge_local), "post" do

      assert_select "input[name=?]", "merge_local[c_local_id]"

      assert_select "input[name=?]", "merge_local[prov_local_id]"

      assert_select "input[name=?]", "merge_local[merge_restaurant_id]"

      assert_select "input[name=?]", "merge_local[restaurant_token]"

      assert_select "input[name=?]", "merge_local[status]"
    end
  end
end
