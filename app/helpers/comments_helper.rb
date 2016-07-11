module CommentsHelper
	def getComments(post_id)
		@comments = Comment.where(post_id: post_id)
	end
end