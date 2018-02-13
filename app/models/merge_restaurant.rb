class MergeRestaurant < ApplicationRecord
	#relaciones
	belongs_to :connection
	has_many :merge_locals
	has_many :prov_merge_rests
	has_many :providers, through: :prov_merge_rests
	#validaciones
	validates :restaurant_key, presence: true, uniqueness: true
	validates :connection_id, presence: true, uniqueness: true
end
