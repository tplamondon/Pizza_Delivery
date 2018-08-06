class OrderStatusController < ApplicationController
  #ensures we're signed in to at least user before viewing
  before_action :authenticate_any!, :only => [:inProgress, :placed, :shipped, :completed]
  before_action :authenticate_restaurant!, :only => [:cancelled, :index]
  #before_action :authenticate_user!, :only => [:inProgress]



  def index
    @order_statusus = OrderStatus.all
  end

  def inProgress
    #@orders = Order.all.where(order_status_id: [1])
    if user_signed_in?
      @orders = Order.all.where(order_status_id: [1], userId: [current_user.id])
    elsif restaurant_signed_in?
      @orders = Order.all.where(order_status_id: [1])
    end
  end

  def placed
    if user_signed_in?
      @orders = Order.all.where(order_status_id: [2, 3], userId: [current_user.id])
    elsif restaurant_signed_in?
      @orders = Order.all.where(order_status_id: [2])
    elsif driver_signed_in?
      @orders = Order.all.where(order_status_id: [2])
    else
    end
  end

  def shipped
    if user_signed_in?
      @orders = Order.all.where(order_status_id: [3], userId: [current_user.id])
    elsif restaurant_signed_in?
      @orders = Order.all.where(order_status_id: [3])
    elsif driver_signed_in?
      @order = Order.all.where(order_status_id: [3], driver_id: [current_driver.id]).first
      @driver = current_driver
    else
    end
  end

  def completed
    if user_signed_in?
      @orders = Order.all.where(order_status_id: [4], userId: [current_user.id])
    elsif restaurant_signed_in?
      @orders = Order.all.where(order_status_id: [4])
    elsif driver_signed_in?
      @orders = Order.all.where(order_status_id: [4], driver_id: [current_driver.id])
    else
    end
  end

  def cancelled
    if user_signed_in?
      @orders = Order.all.where(order_status_id: [5], userId: [current_user.id])
    elsif restaurant_signed_in?
      @orders = Order.all.where(order_status_id: [5])
    else
    end
  end
end
