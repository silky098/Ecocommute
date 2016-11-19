class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to '/'
        # flash[:notice] = "You signed up successfully"
        # flash[:color]= "valid"
      else
        redirect_to '/users/new'
        # flash[:notice] = "Form is invalid"
        # flash[:color]= "invalid"
      end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
