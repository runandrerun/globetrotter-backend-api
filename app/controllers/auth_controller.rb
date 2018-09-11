class AuthController < ApplicationController

  def show
    @user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: @user
    else
      render json: { error: "Auth failed"}, status: 401
    end
  end

end
