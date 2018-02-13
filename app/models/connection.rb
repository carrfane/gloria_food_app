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

	#Metodos
	def conexion_request(tiraSQL)
		ActiveRecord::Base.establish_connection({
			'adapter'=>'postgresql',
			'host'=> host_db,
			'username'=>username_db,
			'password'=>password_db,
			'database'=>name_db
		})
		data = ActiveRecord::Base.connection.execute(tiraSQL)
		ActiveRecord::Base.establish_connection :development
		return data
	end
end
