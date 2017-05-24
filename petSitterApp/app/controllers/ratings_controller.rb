class RatingsController < ApplicationController
  def index
    @rating = Rating.new
  end

  def show
    @rating_all = Ratings.all
  end

  def edit
    @rating.destroy
    redirect_to rating_path
  end
end
