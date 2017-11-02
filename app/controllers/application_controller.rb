class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id] 
  end

  def current_user_params
    params.require(:current_user).permit(:name, :email, :password, :password_confirmation)
  end

  def authorize
    redirect_to new_user_path unless current_user
  end
  
  
  private

    helper_method :current_user



end
