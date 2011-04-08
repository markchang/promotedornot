class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user, :is_signed_in_user?
    
  private  
  def current_user  
    @current_user ||= User.find(session[:user_id]) if session[:user_id]  
  end
  
  def is_signed_in_user?(uid)
    current_user && current_user.uid == uid
  end
end
