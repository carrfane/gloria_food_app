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

	#metodos
	def consult_cloud_db
		#establish_connection :development_gloria_1
		#({
		#	'adapter'=>'postgresql',
		#	'host'=>'localhost',
		#	'username'=>'postgres',
		#	'password'=>'postgres',
		#	'database'=>'development_gloria_1'
		#})
		#datos = ActiveRecord::Base.connection.execute("Select * from pruebas")
		#puts datos
	end
end
