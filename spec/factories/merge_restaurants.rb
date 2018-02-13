FactoryBot.define do
  factory :merge_restaurant do
    restaurant_key "MyString"
    connection { FactoryBot.create(:connection) }
    status true
  end
end
