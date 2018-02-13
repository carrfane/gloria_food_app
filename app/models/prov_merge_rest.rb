class ProvMergeRest < ApplicationRecord
 	#relaciones
 	belongs_to :provider
 	belongs_to :merge_restaurant
 	#validaciones
	validates :provider_id, presence: true
	validates :merge_restaurant_id, presence: true
end
