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

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to @order
    else
      
    end
  end

  private
    def order_params
      params.require(:order).permit(:location)
    end
end
