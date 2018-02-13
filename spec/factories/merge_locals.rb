FactoryBot.define do
  factory :merge_local do
    c_local_id 1
    prov_local_id 1
    merge_restaurant { FactoryBot.create(:merge_restaurant).id }
    restaurant_token "MyString"
    status true
  end
end
