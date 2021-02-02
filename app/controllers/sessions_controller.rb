class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by_name(params[:name])

    if @user
      session[:current_user_id] = @user.id
      redirect_to root_path, notice: 'Logged In Successfull'
    else
      flash.now.alert = "User Doesn't exist!"
      render :new
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path, notice: 'Logged Out'
  end
end
