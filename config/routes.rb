Rails.application.routes.draw do
  resources :sellers
  devise_for :users
  resources :homes
	resources :funding_products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
	
	
	get '/sellers/:seller_id/show_seller', to: 'sellers#show_seller', as: :sellers_show_seller
	
	root 'funding_products#index'
end
