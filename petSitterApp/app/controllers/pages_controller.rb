class PagesController < ApplicationController

  def home
  end

  def book
  end

  def wall
    @wall = Pet.all
  end

  def search
    @search = User.where(name: params[:search])
  end

end
