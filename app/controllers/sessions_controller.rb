class SessionsController < ApplicationController
  def new
  end

  def create
    #Finds the user email through the user.email params and checks if the password matches to the email
    @user = User.find_by("email = ?", user_params[:email])
    if @user && @user.authenticate(user_params[:password])
      session[:id] = @user.id
      redirect_to action: "profile"
    else
      flash[:controller_error] = "Email or password is invalid"
      # flash[:error] = @user.errors.full_messages
      render "login"
    end
  end

  def profile
    if session[:id]
    else
      if !session[:id]
        redirect_to(login_form_path)
      end
    end
  end

  def destroy
    if session[:id]
      reset_session
      redirect_to(login_form_path)
    else
      redirect_to(login_form_path)
    end

  end

  def user_params
    params.permit(:email, :password)
  end
end
