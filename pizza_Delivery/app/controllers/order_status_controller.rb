class OrderStatusController < ApplicationController
  def index
    @order_statusus = OrderStatus.all
  end

  def inProgress
    #@orders = Order.all.where(order_status_id: [1])
    if user_signed_in?
      @orders = Order.all.where(order_status_id: [1], userId: [current_user.id])
    elsif restaurant_signed_in?
      @orders = Order.all.where(order_status_id: [1])
    else
    end
  end

  def placed
    if user_signed_in?
      @orders = Order.all.where(order_status_id: [2], userId: [current_user.id])
    elsif restaurant_signed_in?
      @orders = Order.all.where(order_status_id: [2])
    else
    end
  end

  def shipped
    if user_signed_in?
      @orders = Order.all.where(order_status_id: [3], userId: [current_user.id])
    elsif restaurant_signed_in?
      @orders = Order.all.where(order_status_id: [3])
    else
    end
  end

  def completed
    if user_signed_in?
      @orders = Order.all.where(order_status_id: [4], userId: [current_user.id])
    elsif restaurant_signed_in?
      @orders = Order.all.where(order_status_id: [4])
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
