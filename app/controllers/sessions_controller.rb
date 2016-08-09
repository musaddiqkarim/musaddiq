class SessionsController < ApplicationController
   def new
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
        else
      if params[:remember_me]
      cookies.permanent[:auth_token] = user.auth_token
      cookies[:auth_token] = user.auth_token
      redirect_to root_url, notice: 'Logged in!'
else
    	flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
     cookies.delete(:auth_token)
    redirect_to  login_url, notice: 'Logged out!'
  end
end
end