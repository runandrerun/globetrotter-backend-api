class UsersController < ApplicationController

  def create
    # byebug
    @user = User.create(user_params)
    if @user.valid?
      render json: @user, status: :created
    else
      render json: { message: 'Invalid Username or Password' }, status: :bad_request
    end
  end





  private
  def user_params
    params.require(:user).permit(:username, :password, :avatar_url)
  end


end
