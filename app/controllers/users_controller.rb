class UsersController < ApplicationController
  #Register method from https://youtu.be/XE2snJuQsa0

  def new
    if session[:id]
      redirect_to user_profile_path
    else
      @user = User.new
    end
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

  def destroy
    reset_session
    User.find(params[:id]).destroy
    redirect_to login_form_path
  end

  private

  def user_params
    params.require(:user).permit(:firstName, :lastName, :email, :password, :password_confirmation)
  end
end
