class CommentsController < ApplicationController

	def create

		curr_user = Post.find(params[:post_id]).user


		print "\n\n\n\n\n", params[:post_id], "\n\n\n\n\n"

		Comment.create(
			content: params[:comments][:content],
		 	post_id: params[:post_id],
		 	commentBy: params[:commentBy]
		)

		redirect_to :back
	end
end
