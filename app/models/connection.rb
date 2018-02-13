class Connection < ApplicationRecord
	attribute :status, :boolean, default: true
	has_one :merge_restaurant
end
