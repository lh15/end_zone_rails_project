class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create authenticate]
  def new
  end
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      session[:cart] = []
    else
      flash[:errors] = user.errors.full_messages
    end
    redirect_to '/events'
  end

  def authenticate
    user = User.find_by(email: login_params[:email])
    if user.nil?
      flash[:errors] = ['User not found']
      redirect_to '/users/login'
    elsif user.authenticate(login_params[:password])
      session[:user_id] = user.id
      session[:cart] = []
      redirect_to '/events'
    else
      flash[:errors] = ['Incorrect Password']
      redirect_to '/users/login'
    end
  end

  def show
    @user = User.find(session[:user_id])
    @purchases = Ticket.where(buyer_id:@user)
    @listings = Ticket.where(seller_id:@user).group(:event_id, :date_purchased, :buyer_id)
  end

  def logout
    tickets = Ticket.where(id: session[:cart])
    tickets.update_all(sold:false)
    reset_session
    redirect_to '/events'
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])

    if @user.update(user_params)
      redirect_to '/events', notice: "You have successfully updated your information!"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
  end
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :address, :phone_number, :password, :password_confirmation)
  end

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
