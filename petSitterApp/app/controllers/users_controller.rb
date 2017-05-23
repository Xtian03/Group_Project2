class UsersController < ApplicationController

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
      @user = User.new(user_params)
      # post.user = @current_user
      cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
      @user.image = cloudinary["url"]
      @user.save
      redirect_to "/users"
  end

  def edit
    @user = User.find_by(id: params["id"])
  end

  def update
  end

  def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
  end

  private
    def user_params
      params.required(:user).permit(:name, :email, :password, :password_confirmation, :location, :image)
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
