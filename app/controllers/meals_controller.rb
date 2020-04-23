class MealsController < ApplicationController

  def create
    @meal = Meal.new(new_meal_params)
    @meal.save

    authorize @meal
  end

  private

  def new_meal_params
    params.require(:meal).permit(:order, :price)
  end

end
