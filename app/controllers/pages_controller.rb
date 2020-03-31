class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # @restaurant = Restaurant.new
    @user = User.new
    # if @user.address
    #   redirect_to :restaurants
    # end
    # redirect_to :controller => 'post', :action => 'index'
  end
end
