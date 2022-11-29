Rails.application.routes.draw do
  resources :orders
  resources :user_likes
  resources :sellers
  devise_for :users
  resources :homes
  resources :funding_products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
	
	get '/sellers/:seller_id/homepage_seller', to: 'sellers#homepage_seller', as: :sellers_homepage_seller
	
	get '/sellers/:seller_id/makerpage_seller', to: 'sellers#makerpage_seller', as: :sellers_makerpage_seller
	
	get '/homes/:user_id/supporterpage', to: 'homes#supporterpage', as: :homes_supporterpage
	
	root 'homes#index'
end
