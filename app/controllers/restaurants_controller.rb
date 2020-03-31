class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(new_rest_params)
    @restaurant.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def new_rest_params
      params.require(:restaurant).permit(:address, :cuisine, :bio, :name)
  end
end
