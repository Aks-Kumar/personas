class SessionsController < ApplicationController
  skip_before_action :ensure_logged_in

  def login
    user = Account.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path
    else
      message = "Something went wrong, make sure your username and password is right"
      redirect_to login_path, notice: message
    end
  end

  def get_login_params
    render "login"
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    redirect_to login_path
  end
end
