class UsersController < ApplicationController
  before_action :check_for_user, :only => [:edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
      flash[:message] = 'Sign up was successful'
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    if @user.update(user_params)
      flash[:message] = 'Profile successfully updated'
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :phone, :gender, :driver, :license, :car_make, :car_colour, :car_reg_no, :smoking, :pets, :destination)
  end
end
