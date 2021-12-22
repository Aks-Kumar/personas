class AccountsController < ApplicationController
  skip_before_action :ensure_logged_in

  def new
    @user = Account.new
    render "new"
  end

  def create
    @user = Account.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.acc_type = :CUSTOMER
    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path
    else
      render "new"
    end
  end
end
