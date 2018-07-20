class PizzaCanadaController < ApplicationController

  # they can view the home and info page I think
  before_action :authenticate_any!, :only => [:menu]

  def menu
  end

  def home
  end

  def info
  end
end
