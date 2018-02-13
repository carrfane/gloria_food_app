class Prueba < ApplicationRecord
	establish_connection :development_gloria_1

	def consult_cloud_db
		#({
		#	'adapter'=>'postgresql',
		#	'host'=>'localhost',
		#	'username'=>'postgres',
		#	'password'=>'postgres',
		#	'database'=>'development_gloria_1'
		#})
		datos = ActiveRecord::Base.find_by_sql("select * from prueba") 
		#ActiveRecord::Base.connection.tables 
		#ActiveRecord::Base.connection.execute("Select * from pruebas")
		
	end
end
