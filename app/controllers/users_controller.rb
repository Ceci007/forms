class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  
  def new 
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "Welcome to Blogger-Ceci-App #{@user.username}, you have successfully signed up."
    else
      render 'new'
    end
  end

  private 
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
