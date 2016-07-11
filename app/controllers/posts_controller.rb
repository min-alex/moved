class PostsController < ApplicationController
	def index
	end

	def new
		@post = Post.new
	end

	def create
		@curr_user = User.find(session[:user_id])

		Post.create(
			content: params[:content], 
			user_id: session[:user_id]
		)

		redirect_to :back
	end

end
