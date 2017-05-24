class PagesController < ApplicationController

  def home
  end

  def book
    @user_all = User.all
  end

  def wall
    @pets = Pet.all
  end

end
