class AuthController < ApplicationController

  def login
  @user = User.find_by(username: auth_params['username'])
  if @user && @user.authenticate(auth_params['password'])
    render json: @user, status: :created
  else
    render json: {message: 'Invalid Login'}, status: :unauthorized
  end
  end


  private

  def auth_params
    params.require(:user).permit(:username, :password)
  end
end
