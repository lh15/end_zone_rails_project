class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create authenticate]
  def new
  end
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
    else
      flash[:errors] = user.errors.full_messages
    end
    redirect_to '/success'
  end

  def authenticate
    user = User.find_by(email: login_params[:email])
    if user.nil?
      flash[:errors] = ['User not found']
      redirect_to '/users/login'
    elsif user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to '/success'
    else
      flash[:errors] = ['Incorrect Password']
      redirect_to '/users/login'
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  def logout
    reset_session
    redirect_to '/users/login'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :address, :phone_number, :password, :password_confirmation)
  end

  def login_params
    params.require(:user).permit(:email, :password)
  end
end