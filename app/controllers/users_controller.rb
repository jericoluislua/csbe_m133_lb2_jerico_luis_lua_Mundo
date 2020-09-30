class UsersController < ApplicationController
  #UsersController idea from https://youtu.be/_rdNv5ijzrk

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/login'
    else
      flash[:error] = @user.errors.full_messages
      redirect_to '/register'
    end

  end

  private

  def user_params
    params.require(:user).permit(:firstName, :lastName, :email, :password, :password_confirmation)
  end
end
