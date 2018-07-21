class OrderStatusController < ApplicationController
  def index
    @order_statusus = OrderStatus.all
  end

  def inProgress
    @order_status = OrderStatus.where(id: [1])
  end

  def placed
    @order_status = OrderStatus.where(id: [2])
  end

  def shipped
    @order_status = OrderStatus.where(id: [3])
  end

  def completed
    @order_status = OrderStatus.where(id: [4])
  end

  def cancelled
    @order_status = OrderStatus.where(id: [5])
  end
end
