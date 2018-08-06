class ProductsController < ApplicationController
  before_action :authenticate_not_driver!, :only => [:index]


  # the menu
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end
end
