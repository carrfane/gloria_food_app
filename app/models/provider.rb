class Provider < ApplicationRecord
	has_many :prov_merge_rests
	has_many :merge_restaurants, through: :prov_merge_rests
end
