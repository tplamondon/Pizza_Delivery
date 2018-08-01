class RestaurantsController < ApplicationController

  # doesn't seem to work for some reason?
  #before_action :authenticate_user!
  #before_action :authenticate_user!, only: [:index, :show]
  before_action :authenticate_any!, :only => [:index, :show]
  before_action :authenticate_restaurant!, :only => [:create]

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
  end

end
