class CartsController < ApplicationController

before_action :authenticate_user!, :only => [:payment]

  def show
    @order_items = current_order.order_items
	@order = current_order
  end
  def payment
    @order_items = current_order.order_items
  @order = current_order
  end
end
