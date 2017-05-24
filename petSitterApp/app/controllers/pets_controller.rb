class PetsController < ApplicationController
  # before_action :authorise, only: [:new, :create]

  def index
    @all_pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    pet = Pet.new( pet_params )
    pet.user = @current_user
    pet.save
    redirect_to pet_path(pet)
  end


  def edit
    @pet = Pet.find_by(id: params['id'])
  end

  def show
    @pet = Pet.find_by(id: params["id"])
    # @user = Pet.user
  end

  def update
    pet = Pet.find_by(id: params["id"])
    pet.update( pet_params() )
    redirect_to pet_path(pet)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pet_path
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :date_of_birth, :type_of_pet, :gender, :description, :image)
  end

  def authorise
  unless @current_user
    flash[:error] = "You need to be logged first!"
    redirect_to "/login"
  end
end

end
