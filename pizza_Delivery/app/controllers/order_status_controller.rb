class OrderStatusController < ApplicationController
  def index
    @order_statusus = OrderStatus.all
  end

  def inProgress
    #@orders = Order.all.where(order_status_id: [1]
    if current_user
      @orders = Order.all.where(order_status_id: [1], userId: [current_user.id])
    elsif current_restaurant
      @orders = Order.all.where(order_status_id: [1]
    end
  end

  def placed
    if current_user
      @orders = Order.all.where(order_status_id: [2], userId: [current_user.id])
    elsif current_restaurant
      @orders = Order.all.where(order_status_id: [2]
    end
  end

  def shipped
    if current_user
      @orders = Order.all.where(order_status_id: [3], userId: [current_user.id])
    elsif current_restaurant
      @orders = Order.all.where(order_status_id: [3]
    end
  end

  def completed
    if current_user
      @orders = Order.all.where(order_status_id: [4], userId: [current_user.id])
    elsif current_restaurant
      @orders = Order.all.where(order_status_id: [4]
    end
  end

  def cancelled
    if current_user
      @orders = Order.all.where(order_status_id: [5], userId: [current_user.id])
    elsif current_restaurant
      @orders = Order.all.where(order_status_id: [5]
    end
  end
end
