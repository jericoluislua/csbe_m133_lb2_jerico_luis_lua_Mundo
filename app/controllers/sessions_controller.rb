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
      flash[:success] = "Successfully logged in"
      redirect_to action: "profile"
    else
      flash[:controller_error] = "Email or password is invalid"
      redirect_to action: "new"
    end
  end
  #profile = view
  def profile
    if session[:id]
      @user = User.find(session[:id])
    else
      if !session[:id]
        redirect_to(login_form_path)
      end
    end
  end
  #update profile = controller
  def update
    @user = User.find(params[:id])
    if
    if @user && @user.authenticate(user_update_params[:old_password])
      end
      if user.update(user_update_params)
        flash[:notice] = "success"
        redirect_to action: "index"
      else
        @subjects = Subject.all
        render action: "edit"
      end
    end
  end
  #logoout
  def destroy
    if session[:id]
      reset_session
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
    params.require(:user).permit(:firstName, :lastName, :email, :old_password, :new_password, :new_password_confirmation)
  end


  def user_update_no_new_pass_params
    params.require(:user).permit(:firstName, :lastName, :email, :old_password)
  end
end
