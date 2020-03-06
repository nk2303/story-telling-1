class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authorized
  # helper_method :current_teller, logged_in?

  def login(teller)
    session[:teller_id] = @teller.id
  end

  def current_teller
    @current_teller ||= Teller.find (session[:teller_id]) if session[:teller_id]
  end

  def logged_in?
      !!@current_teller 
  end

  def authorized
    unless logged_in?
      flash[:notice] = "You must be logged in to see this page"
      redirect_to login_path
    end
  end

end
