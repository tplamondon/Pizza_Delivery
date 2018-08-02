class RestaurantsController < ApplicationController

  # doesn't seem to work for some reason?
  #before_action :authenticate_user!
  #before_action :authenticate_user!, only: [:index, :show]
  #before_action :authenticate_any!, :only => [:index, :show]
  before_action :authenticate_restaurant!, :only => [:index, :show, :new, :create]

  # redirect_to root_path unless @user == current_user #if you don't care who the user is I recommend to use user_signed_id? method

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  private
    # FINALLY!
    def restaurant_params
      params.require(:restaurant).permit(:email, :password, :password_confirmation, :encrypted_password, :name, :phoneNumber)
    end

end
