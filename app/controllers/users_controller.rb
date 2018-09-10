class UsersController < ApiController
  before_action :require_login, except: [:create, :index]



  def current
    render json: current_user.as_json(only: %i(id username))
  end


  # GET /users
  def index
    @users = User.all
    render json: @users
  end



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

  # POST /users
  def create
    @user = User.create!(user_params)
    render json: { token: @user.auth_token}
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :password, :avatar)
    end
end
