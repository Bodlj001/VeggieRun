class MenuItemsController < ApplicationController

  def create
    @item = MenuItem.new(new_item_params)
    if params[:restaurant_id]
      @restaurant = Restaurant.find(params[:restaurant_id])
      @item.restaurant = @restaurant
    end
    @item.save
  end

  private

  def new_item_params
      params.require(:menu_item).permit(:dish_name, :description, :price, :calories)
  end

end
