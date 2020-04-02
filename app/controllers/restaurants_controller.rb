class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @restaurants = Restaurant.all

    if params[:query]
      @little_address = params[:address].split(',')[0]
    else
      @little_address = params[:restaurant][:address].split(',')[0]
    end

    if params[:query] && params[:query] != ""
      @selections = Restaurant.search_by_cuisine_name("#{params[:query]}")
    else
      @selections = Restaurant.all
    end
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
      params.require(:restaurant).permit(:address, :cuisine, :bio, :name, :vegan)
  end
end
