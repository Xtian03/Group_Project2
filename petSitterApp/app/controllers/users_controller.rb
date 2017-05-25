class UsersController < ApplicationController
  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

  def index
    @userall = User.all

    # We might be getting a parameter called search - params[:search]
    # If there is no params[:search]
      # Pass all users to the view

    # If there is a params[:search] value
      # Use the .where method to search through the User table to find all users
        # where the location field contains params[:search]







    if params[:search].present?
  #   # Users.where("location like ?", "%"+params[:location]+"%")
  #   # Users.find(:all, :location => ["location like ?", "%"+params[:location]+"%"])
  # # @users should be all users where the name field matches params["name"]

    # @users = User.where(location: "Sydney")
    # @users = User.where(location: params[:search])
    # @users = User.where("location LIKE ?", params[:search])
    # @users = User.where("location ILIKE ?", params[:search])
    @users = User.where("location ILIKE ?", "%" + params[:search] + "%")
    # raise "hell"
  #   # User.where(location_field, "<%#{params[:location]}%>")
    else
    @users = User.all
    end
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

private

  def user_params
     params.require(:user).permit(:name, :password, :password_confirmation, :email, :location, :image, :service_ids => [])
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
