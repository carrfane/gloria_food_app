json.extract! merge_restaurant, :id, :restaurant_key, :connection_id, :status, :created_at, :updated_at
json.url merge_restaurant_url(merge_restaurant, format: :json)
