class MergeMenusController < ApplicationController
	def index
		@merge_restaurant = MergeRestaurant.all
	end
end
