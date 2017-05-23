class PagesController < ApplicationController

  def home
  end

  def book
  end

  def wall
    @pets = Pet.all

  end

end
