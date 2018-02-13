class MergeRestaurant < ApplicationRecord
  belongs_to :connection
  has_many :merge_local
  has_many :prov_merge_rests
  has_many :providers, through: :prov_merge_rests
end
