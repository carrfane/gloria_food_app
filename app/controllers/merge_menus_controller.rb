class MergeMenusController < ApplicationController
	def index
		@merge_restaurant = MergeRestaurant.all
	end

	def fetch_menu
		merge_restaurant = MergeRestaurant.find(params[:merge_restaurant_id]) 
		@response = HTTParty.get('https://pos.globalfoodsoft.com/pos/menu',:headers =>{'Content-Type' => 'application/json', 'Authorization' => merge_restaurant.restaurant_key} )
		#@response.code
		#@response['categories']
		#merge_restaurant.connection.consult_cloud_db
		Prueba.new.consult_cloud_db
		puts "========================"
		redirect_to "/menu"
	end
end
