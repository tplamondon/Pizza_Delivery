class AdminController < ApplicationController
before_action :authenticate_restaurant!, :only => [:index]

  def index
    @orders = Order.where(nil) # creates an anonymous scope
    @orders = @orders.id(params[:id]) if params[:id].present?
    @orders = @orders.userId(params[:userId]) if params[:userId].present?
  end
  def orders
    @orders = Order.where(nil) # creates an anonymous scope
    @orders = @orders.id(params[:id]) if params[:id].present?
    @orders = @orders.userId(params[:userId]) if params[:userId].present?
    @orders = @orders.driver_id(params[:driver_id]) if params[:driver_id].present?
    @orders = @orders.store_id(params[:store_id]) if params[:store_id].present?
    @orders = @orders.foodRating(params[:foodRating]) if params[:foodRating].present?
    @orders = @orders.driverRating(params[:driverRating]) if params[:driverRating].present?
  end
  def restaurants
  end
  def products
  end
  def stores
  end
  def drivers
  end
  def customers
  end
end
