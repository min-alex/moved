module SessionsHelper
	def log_in(user)
		if session[:user_id]
			session.delete(:user_id)
		end
		session[:user_id] = user.id
	end

	def log_out
		session.delete(:user_id)
	end

	def user
		session[:curr_user] = User.find(session[:user_id])
	end

end
