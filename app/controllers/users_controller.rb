class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user, status: :created
    else
      render json: {error: "User not created"}
    end
  end



<<<<<<< HEAD

=======
  # GET /users/1
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def profile
    user = User.find_by_auth_token!(request.headers[:token])
    user_trips = User.trips
    render json: { user: { username: user.username }, trips: user_trips}
  end
>>>>>>> 1fe817601bc9609930cc83c44bc5eff612188a8f

  private
  def user_params
    params.require(:user).permit(:username, :password, :avatar_url)
  end


end
