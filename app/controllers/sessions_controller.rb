class SessionsController < ApplicationController
  #SessionsController idea from https://www.youtube.com/watch?v=FwfsMv2kSX4
  def new
  end

  def create
    #Finds the user email through the user.email params and checks if the password matches to the email
    @user = User.find_by(email: params["user"]["email"])
        .try(:authenticate, params["user"]["password"])
    if @user
      session[:user_id] = @user.id
    end
  end

  def destroy
  end
end
