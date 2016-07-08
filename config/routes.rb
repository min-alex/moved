Rails.application.routes.draw do

	resources :users
	resources :posts
	# resources :posts

	root "home#index"

	get    '/login',   to: 'sessions#new'
	post   '/login',   to: 'sessions#create'
	get	'/logout',  to: 'sessions#destroy'

	# get '/'

end
