class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
  
  def user_signed_in?
    current_user.present?
  end
  
  def admin_signed_in?
    current_user.present? && current_user.is_admin?
  end
  
  helper_method :user_signed_in?
  helper_method :admin_signed_in?
  
end
