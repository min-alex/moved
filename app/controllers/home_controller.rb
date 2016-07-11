class HomeController < ApplicationController
	def index
		if session[:user_id]
			redirect_to '/feed'
		end
	end
	def feed
		@posts = Post.all
	end
end
