class ServicesController < ApplicationController
  def index
    @all_services = Service.all
  end

  def show
    @service = Service.find(params[:id])
<<<<<<< HEAD
<<<<<<< HEAD
    #@user = @service.user
=======
    @user = @service.user
>>>>>>> c4d9fcaa9e8d76d25f54da95eda6077f823741b6
=======
>>>>>>> 66c1ff68db7e539658e4e1eec85b9d929e33507b
  end

  def create
    @service = Service.new(service_params)
    @service.save
       redirect_to @service, notice: 'Service was successfully created.'
  end

  def new
    @service = Service.new
  end

  def edit
    @service = Service.find_by(id: params["id"])
  end

  def update
    @service = Service.find_by(id: params["id"])
    @service.update(service_params)
    redirect_to @service, notice: 'Service was successfully updated.'
  end

  def destroy
      @service = Service.find(params[:id])
      @service.destroy
      redirect_to services_path
  end

  private
  def service_params
    params.require(:service).permit(:name, :description, :price)
  end

end
