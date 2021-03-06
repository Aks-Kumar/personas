class ApplicationController < ActionController::Base
  before_action :ensure_logged_in

  def ensure_logged_in
    unless current_user
      redirect_to login_path
    end
  end

  def current_user
    return @current_user if @current_user
    current_user_id = session[:user_id]
    if current_user_id
      @current_user = Account.find(current_user_id)
    else
      nil
    end
  end
end
