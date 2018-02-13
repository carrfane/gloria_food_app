class Connection < ApplicationRecord
	#relaciones
	#has_one :merge_restaurant
	#validaciones
	validates :name, presence: true, uniqueness: true
	validates :name_db, presence: true, uniqueness: true
	validates :username_db, presence: true
    validates :password_db, presence: true
    validates :host_db, presence: true

	attribute :status, :boolean, default: true
end
