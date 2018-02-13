require 'rails_helper'

RSpec.describe "merge_locals/show", type: :view do
  before(:each) do
    @merge_local = assign(:merge_local, MergeLocal.create!(
      :c_local_id => 2,
      :prov_local_id => 3,
      :merge_restaurant => nil,
      :restaurant_token => "Restaurant Token",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Restaurant Token/)
    expect(rendered).to match(/false/)
  end
end
