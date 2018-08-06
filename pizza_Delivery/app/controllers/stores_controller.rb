class StoresController < ApplicationController

  def index
    @stores = Store.all
    @order = current_order
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to stores_path
    else
      render 'new'
    end
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path

  end

  private
    # FINALLY!
    def store_params
      params.require(:store).permit(:street_address, :city, :province, :zipCode)
    end

end
