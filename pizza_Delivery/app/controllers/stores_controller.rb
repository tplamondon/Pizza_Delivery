class StoresController < ApplicationController

  def index
    @stores = Store.all
    @order = current_order
  end
end
