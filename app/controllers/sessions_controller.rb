class SessionsController < ApplicationController
  #login form = view
  def new
    if session[:id]
      redirect_to user_profile_path
    end
  end

  #login method = controller
  def create
    #Finds the user email through the user.email params and checks if the password matches to the email
    @user = User.find_by("email = ?", user_params[:email])
    if @user && @user.authenticate(user_params[:password])
      session[:id] = @user.id
      flash[:success_login] = "Successfully logged in"
      redirect_to action: "edit"
    else
      flash[:controller_error] = "Email or password is invalid"
      redirect_to action: "new"
    end
  end

  #edit = view
  def edit
    if session[:id]
      @user = User.find(session[:id])
    else
      if !session[:id]
        redirect_to(login_form_path)
      end
    end
  end

  #update edit without new password = controller
  def update
    @user = User.find(params[:id])
    if @user && @user.authenticate(user_update_params[:password]) && @user.update(user_update_params)
      # if @user.update(user_update_params)
      flash[:success_update] = "Updated successfully."
      redirect_to action: "edit"
      # end
    else
      flash[:error_update] = "Empty field or invalid password"
      redirect_to action: "edit"
    end
  end

  #logout
  def destroy
    if session[:id]
      reset_session
      flash[:success] = "Successfully logged out."
      redirect_to(login_form_path)
    else
      redirect_to(login_form_path)
    end

  end

  private

  def user_params
    params.permit(:email, :password)
  end


  def user_update_params
    params.require(:user).permit(:firstName, :lastName, :email, :password)
  end
end
