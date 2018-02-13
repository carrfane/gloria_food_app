class Provider < ApplicationRecord
	#relaciones
	has_many :prov_merge_rests
	has_many :merge_restaurants, through: :prov_merge_rests
	#validaciones
	validates :server_key, presence: true, uniqueness: true
	validates :ref, presence: true, uniqueness: true
	validates :name, presence: true, uniqueness: true
end
