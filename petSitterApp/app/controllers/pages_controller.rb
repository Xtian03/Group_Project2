class PagesController < ApplicationController

  def home
  end

  def book
    #@booking = Booking.all
  end

  def wall
    @pets = Pet.all
  end

  def search
    @search = User.where(name: params[:search])
  end

end
