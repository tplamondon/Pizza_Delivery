class AdminController < ApplicationController
before_action :authenticate_restaurant!, :only => [:index, :orders, :restaurants, :products, :stores, :drivers, :customers]

  def index
  end
  def orders
    @orders = Order.where(nil) # creates an anonymous scope
    @orders = @orders.id(params[:id]) if params[:id].present?
    @orders = @orders.userId(params[:userId]) if params[:userId].present?
    @orders = @orders.driver_id(params[:driver_id]) if params[:driver_id].present?
    @orders = @orders.store_id(params[:store_id]) if params[:store_id].present?
    @orders = @orders.foodRating(params[:foodRating]) if params[:foodRating].present?
    @orders = @orders.driverRating(params[:driverRating]) if params[:driverRating].present?
    @orders = @orders.order_status_id(params[:order_status_id]) if params[:order_status_id].present?
  end
  def restaurants
    @restaurants = Restaurant.where(nil) # creates an anonymous scope
    @restaurants = @restaurants.id(params[:id]) if params[:id].present?
    @restaurants = @restaurants.email(params[:email]) if params[:email].present?
    @restaurants = @restaurants.pname(params[:name]) if params[:name].present?
    @restaurants = @restaurants.phoneNumber(params[:phoneNumber]) if params[:phoneNumber].present?
  end
  def products
    @products = Product.where(nil) # creates an anonymous scope
    @products = @products.id(params[:id]) if params[:id].present?
    @products = @products.pname(params[:name]) if params[:name].present?
    @products = @products.price(params[:price]) if params[:price].present?
    @products = @products.food(params[:food]) if params[:food].present?
  end
  def stores
    @stores = Store.where(nil) # creates an anonymous scope
    @stores = @stores.street_address(params[:street_address]) if params[:street_address].present?
    @stores = @stores.city(params[:city]) if params[:city].present?
    @stores = @stores.province(params[:province]) if params[:province].present?
    @stores = @stores.zipCode(params[:zipCode]) if params[:zipCode].present?
  end
  def drivers
    @drivers = Driver.where(nil) # creates an anonymous scope
    @drivers = @drivers.id(params[:id]) if params[:id].present?
    @drivers = @drivers.email(params[:email]) if params[:email].present?
    @drivers = @drivers.pname(params[:name]) if params[:name].present?
    @drivers = @drivers.phoneNumber(params[:phoneNumber]) if params[:phoneNumber].present?
    end
  def customers
    @customers = User.where(nil) # creates an anonymous scope
    @customers = @customers.id(params[:id]) if params[:id].present?
    @customers = @customers.email(params[:email]) if params[:email].present?
    @customers = @customers.pname(params[:name]) if params[:name].present?
    @customers = @customers.province(params[:province]) if params[:province].present?
    @customers = @customers.zipCode(params[:zipCode]) if params[:zipCode].present?
  end
end
