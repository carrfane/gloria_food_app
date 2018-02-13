Rails.application.routes.draw do
  root 'connections#index'
  resources :connections, except: :show
  resources :merge_locals
  resources :merge_restaurants
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
