class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def index
  end
end
