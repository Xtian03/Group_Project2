class UsersController < ApplicationController
  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

  def index
    @userall = User.all
  # if params["location"] is defined
  #   if params[:location].present?
  #   # Users.where("location like ?", "%"+params[:location]+"%")
  #   # Users.find(:all, :location => ["location like ?", "%"+params[:location]+"%"])
  # # @users should be all users where the name field matches params["name"]
  #   @users = User.where(:location => ["location like ?", "%"+params[:location]+"%"])
  #   # User.where(location_field, "<%#{params[:location]}%>")
  #   else
  #   @users = User.search(params[:search])
  #   end

  end

  def show
    @user = User.find_by(id: params["id"])

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )
    cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
    @user.image = cloudinary["url"]
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path( @user )
    else
      render :new

    end
  end

  def edit
    @user = User.find_by(id: params['id'])
  end

  def update

    user = User.find_by( id: params['id'] )
    user.update( user_params )

    if params[:user][:image]
      cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
      user.image = cloudinary["url"]
    end
    user.save

    redirect_to "/users/#{user.id}"
  end

  def destroy
      user = User.find_by(id: params["id"])
      user.destroy
      redirect_to "/"
  end

  # UPVOTE AND DOWNVOTE RATING
  def upvote
  @user = User.find(params[:id])
  @user.upvote_by @current_user
  redirect_to :back
  end

  def downvote
  @user = User.find(params[:id])
  @user.downvote_by @current_user
  redirect_to :back
  end

private

  def user_params
     params.require(:user).permit(:name, :password, :password_confirmation, :email, :location, :image, :service_ids => [])
     # raty_rate
    #  ratyrate_rater
  end

  def check_if_logged_out
    if @current_user
      flash[:error] = "You are already logged in!"
      redirect_to "/users"
    end

  end

  def check_if_logged_in
    unless @current_user
      flash[:error] = "You need to be logged in!"
      redirect_to "/login"
    end
  end

end
