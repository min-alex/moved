class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(username: params[:session][:username].downcase)

    if user && user.password == (params[:session][:password])
    	log_in user
    	redirect_to user
    else
      flash[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  	log_out
  	redirect_to root_path
  end


end
