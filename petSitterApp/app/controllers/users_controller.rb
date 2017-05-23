class UsersController < ApplicationController
  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

  def index
    @userall = User.all
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )
  if @user.save
    session[:user_id] = @user.id
    redirect_to user_path( @user )
  else
    render :new
      @user = User.new(user_params)
      # post.user = @current_user
      cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
      @user.image = cloudinary["url"]
      @user.save
      redirect_to "/users"
  end


  def edit
    @user = User.find_by(id: params['id'])
  end

  def update

    user = User.find_by(id: params["id"])
    user.update( user_params() )
    redirect_to "/users/#{user.id}"
  end

  def destroy

      user = User.find_by(id: params["id"])
      user.destroy
      redirect_to "/"
  end
end

private

  def user_params
     params.require(:user).permit(:name, :password, :password_confirmation, :email, :location, :image)
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


# Finish the create step --
  # Define strong params --
  # Create the user --
  # Redirect to the list of all users --

# Get into the edit step
  # Add the form into edit.html.erb (look similar to new.html.erb)

# Get into the update step
  # Update the user (using user_params - strong params)
  # Redirect to the profile page of that user

# Get into the destroy step
  # Button on a page
  # When someone clicks that
    # Delete the user
    # Redirect to the list of all users
