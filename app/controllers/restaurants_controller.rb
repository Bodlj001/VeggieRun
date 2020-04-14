class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @restaurants = Restaurant.all

    if params[:query]
      @little_address = params[:address].split(',')[0]
    else
      @little_address = params[:restaurant][:address].split(',')[0]
    end

    if (params[:query] && params[:query] != "") && (params[:query2].nil? || params[:query2] == "")
      @selections = Restaurant.search_by_cuisine_name_bio_vegan("#{params[:query]}")
    elsif (params[:query] && params[:query] != "") && (params[:query2] && params[:query2] != "")
      @selections = Restaurant.search_by_cuisine_name_bio_vegan("#{params[:query]} #{params[:query2]}")
    elsif (params[:query2] && params[:query2] != "") && (params[:query].nil? || params[:query] == "")
      @selections = Restaurant.search_by_cuisine_name_bio_vegan("#{params[:query2]}")
    else
      @selections = Restaurant.all
    end

    authorize @restaurants
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @items = MenuItem.where(restaurant_id: params[:id])
    @starters = @items.where(mealtype: 'S')
    @mains = @items.where(mealtype: 'M')
    @desserts = @items.where(mealtype: 'D')

    authorize @restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(new_rest_params)
    @restaurant.save
  end


  private

  def new_rest_params
      params.require(:restaurant).permit(:address, :cuisine, :bio, :name, :vegan)
  end
end
