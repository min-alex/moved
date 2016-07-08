class PostsController < ApplicationController
	def index
	end

	def new
		Post.new
	end

	def create
		Post.create(content: params[:content], user_id: session[:id])

		redirect_to root_path
	end

	def post_params
		# params.require(:posts).permit(:content,)
		# params[:user_id] = session[:user_id]
	end

end
