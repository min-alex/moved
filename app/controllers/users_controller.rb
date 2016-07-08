class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@posts = @user.posts
	end

	def new
		User.new
	end

	def create
		User.create(user_params)

		redirect_to root_path
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)

		redirect_to root_path
	end

	def destroy
		User.find(params[:id]).destroy

		redirect_to root_path
	end

	def user_params
		params.require(:users).permit(:name, :email, :username, :password)
	end


end
