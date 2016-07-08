class SessionsController < ApplicationController
  def new
  	# @session = Sessions.new
  end
  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.password == (params[:session][:password])
    	log_in user
    	redirect_to user
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      flash[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  	log_out
  	redirect_to root_path
  end

end
