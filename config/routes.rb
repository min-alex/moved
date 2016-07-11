Rails.application.routes.draw do

	resources :users
	resources :posts
	resources :comments

	root "home#index"

	get "/feed" => 'home#feed'

	get    '/login',   to: 'sessions#new'
	post   '/login',   to: 'sessions#create'
	get	'/logout',  to: 'sessions#destroy'

	get '/users/:id', to: 'users#show', as: 'curr_user'

end
