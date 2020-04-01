class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @restaurants = Restaurant.all
    @user_details = params[:user]
    @user_address = @user_details[:address]
    little_address = @user_address.split(",")
    @user_display_address = little_address[0]
  end
end
