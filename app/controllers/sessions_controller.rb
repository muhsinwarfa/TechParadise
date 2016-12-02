class SessionsController < ApplicationController
  skip_before_action :authenticate
  
	 before_action :session_params, only: [:create]

  def new
  end

 
  def create
	  user = User.find_by(email: params[:sessions][:email].downcase)
	  if user && user.authenticate(params[:sessions][:password])
	  	log_in(user)
	  	redirect_to user
	  else
	  	flash.now[:danger] = "Invalid email/password"
	  	render 'new'
	  end
  end

  def destroy 
  	log_out
  	flash[:notice] = 'Logged out'
  	redirect_to  login_path
  end

  private

  def session_params
    params.require(:sessions).permit(:email, :password)
  end
end
