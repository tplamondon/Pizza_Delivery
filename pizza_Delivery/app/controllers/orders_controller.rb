class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    if driver_signed_in?
        @driver = current_driver
    end
  end

  def index
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to order_status_index_path
  end

  def edit
    @order = Order.find(params[:id])
    @order_status = OrderStatus.all
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to @order
    else
    end
  end

  private
    def order_params
      params.require(:order).permit(:location, :order_status_id, :userId, :driver_id)
    end
end
