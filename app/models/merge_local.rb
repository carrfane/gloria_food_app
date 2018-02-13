class MergeLocal < ApplicationRecord
	#relaciones
	belongs_to :merge_restaurant
	#validaciones
	validates :c_local_id, presence: true, uniqueness: true
	validates :prov_local_id, presence: true, uniqueness: true
	validates :merge_restaurant_id, presence: true
	validates :restaurant_token, presence: true, uniqueness: true
end
