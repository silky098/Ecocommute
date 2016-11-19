class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by :email => params[:email]
      if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      flash[:error] = 'Login Successful!'
      flash[:color]= "valid"
    else
    # If user's login doesn't work, send them back to the login form.
      flash[:message] = 'Invalid email or password'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
    flash[:error] = 'You have been logged out!'
    flash[:color]= "invalid"
  end

end
