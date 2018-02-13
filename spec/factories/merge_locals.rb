FactoryBot.define do
  factory :merge_local do
    c_local_id 1
    prov_local_id 1
    merge_restaurant nil
    restaurant_token "MyString"
    status false
  end
end
