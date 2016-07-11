class UsersController < ApplicationController

	# include CommentsHelper
	include SessionsHelper

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])

		@permissions = false
		if session[:user_id] == @user.id
			@permissions = true
		end

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

		redirect_to user
	end

	def destroy
		log_out
		User.find(params[:id]).destroy

		redirect_to root_path
	end

	def user_params
		params.require(:users).permit(:name, :email, :username, :password)
	end


end
