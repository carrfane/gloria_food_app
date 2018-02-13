class MergeRestaurant < ApplicationRecord
<<<<<<< 776d89ca44522ba54d7536f2443bf7a84354cc60
  belongs_to :connection
  has_many :merge_local
  has_many :prov_merge_rests
  has_many :providers, through: :prov_merge_rests
=======
	#relaciones
	belongs_to :connection
	has_many :merge_locals
	has_many :prov_merge_rests
	has_many :providers, through: :prov_merge_rests
	#validaciones
	validates :restaurant_key, presence: true, uniqueness: true
	validates :connection_id, presence: true, uniqueness: true
>>>>>>> migraciones de connection, merge_local, merge_restaurant, prov_merge_rest, provider con test en rspec
end
