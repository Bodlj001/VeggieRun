class UsersController < ApplicationControllera
  skip_before_action :authenticate_user!

  def index
    @restaurants = Restaurant.all
  end
end
