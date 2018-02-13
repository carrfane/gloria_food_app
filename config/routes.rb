Rails.application.routes.draw do
	root 'connections#index'
	resources :connections, except: :show
	devise_for :users
	resources :merge_restaurants do 
		resources :merge_locals
	end

	#Rutas Menu
	get "/menu",  :to => "merge_menus#index"
end
