class ApplicationController < ActionController::Base
    
  include SessionsHelper

  before_action :set_current_user

  def set_current_user
  @current_user = User.find_by(id: session[:user_id])
  end
  
  def authenticate_user
    if @current_user == nil
    redirect_to("/login")
    end
  end

    
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end