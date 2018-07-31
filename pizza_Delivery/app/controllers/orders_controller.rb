class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def index
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to order_status_index_path
  end
end
