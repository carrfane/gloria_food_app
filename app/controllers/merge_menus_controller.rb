class MergeMenusController < ApplicationController
	def index
		@merge_restaurant = MergeRestaurant.all
	end

	def fetch_menu
		merge_restaurant = MergeRestaurant.find(params[:merge_restaurant_id]) 
		
	end
end
