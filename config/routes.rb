Rails.application.routes.draw do
  resources :orders
  resources :user_likes
  resources :sellers
  devise_for :users
  resources :homes
  resources :funding_products
  resources :rewards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
	
	get '/sellers/:seller_id/homepage_seller', to: 'sellers#homepage_seller', as: :sellers_homepage_seller
	
	get '/sellers/:seller_id/makerpage_seller', to: 'sellers#makerpage_seller', as: :sellers_makerpage_seller
	
	get '/homes/:user_id/supporterpage', to: 'homes#supporterpage', as: :homes_supporterpage
	
	get '/rewards/:funding_product_id', to: 'rewards#show', as: :funding_products_rewardpage
	get '/rewards/:product_id_id', to: 'rewards#url_sub', as: :rewards_url
	
	#get '/:user_id/user_likes', to: 'user_likes#show', as: :show_user_like
	
	post 'funding_product/:funding_product_id/user_like' => 'user_likes#like_toggle'
	
	get 'sellers/:seller_id/edit', to: 'sellers#edit', as: :sellers_edit
	get 'sellers/:seller_id', to: 'sellers#show', as: :sellers_show
	
	root 'homes#index'
end
