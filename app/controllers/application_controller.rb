class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  helper_method :logged_in?

  def logged_in_user
    @logged_in_user = User.find_by_id(session[:user_id])
  end

  def logged_in?
    !!logged_in_user
  end

  def require_login
    redirect_to '/users/login' if logged_in_user.nil?
  end
end
