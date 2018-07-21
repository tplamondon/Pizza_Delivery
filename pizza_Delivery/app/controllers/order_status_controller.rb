class OrderStatusController < ApplicationController
  def index
    @order_statusus = OrderStatus.all
  end

  def inProgress
    @orders = Order.all.where(order_status_id: [1])
  end

  def placed
    @orders = Order.all.where(order_status_id: [2])
  end

  def shipped
    @orders = Order.all.where(order_status_id: [3])
  end

  def completed
    @orders = Order.all.where(order_status_id: [4])
  end

  def cancelled
    @orders = Order.all.where(order_status_id: [5])
  end
end
