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
  pet.supplier = @current_user
  pet.save
  redirect_to pet_path(pet)
 end

  def edit
    @pet = Pet.find_by(id: params['id'])
  end

  def show
    @pet = Pet.find_by(id: params["id"])
    @user = @pet.user
  end

  def update
    pet = Pet.find_by(id: params["id"])
    pet.update( pet_params() )
    redirect_to pet_path(pet)
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :date_of_birth, :type_of_pet, :gender, :description, :image)
  end
end
