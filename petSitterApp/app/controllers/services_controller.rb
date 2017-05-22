class ServicesController < ApplicationController
  def index
    @all_services = Service.all
  end

  def show
      @service = Service.first
      #@service = Service.find_by(id: params["id"])
  end

  def new
    @service = Service.new
  end

  def create
  end




end
