class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user, status: :created
    else
      render json: {error: "User not created"}
    end
  end





  private
  def user_params
    params.require(:user).permit(:username, :password, :avatar_url)
  end


end
