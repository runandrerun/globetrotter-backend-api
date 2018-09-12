class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :show]

  def create
    byebug
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, jwt: token}, status: :created
    else
      render json: { message: 'Invalid Username or Password' }, status: :bad_request
    end
  end


  def show
    @user = User.find(params[:id])
    render json: @user
  end





  private
  def user_params
    params.require(:user).permit(:username, :password, :avatar_url)
  end


end
