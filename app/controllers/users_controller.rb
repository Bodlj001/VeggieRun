class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @restaurants = Restaurant.all
    @user = User.new

    # if params[:query] && params[:query] != ""
    #   @the_address = params[:the_address]
    # elsif params[:the_address]

    # else
    @user_details = params[:user]
    @user_address = @user_details[:address]
    # end
  end
end
