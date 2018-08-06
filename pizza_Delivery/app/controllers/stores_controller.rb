class StoresController < ApplicationController

  def index
    @stores = Store.all
    @order = current_order
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(stores_params)
    if @store.save
    else
      render 'new'
  end

  private
    # FINALLY!
    def store_params
      params.require(:street_address, :city, :province, :zipCode)
    end

end
