class ApplicationController < ActionController::Base


# see here for implementing custom authentication
# https://stackoverflow.com/questions/4612545/devise-login-with-user-or-admin-models-and-basecamp-style-subdomains

  def authenticate_any!
      # if we're a restaurant, good
      if restaurant_signed_in?
          true
      # if we're a user, good
      elsif user_signed_in?
        true
      # else, authetnicate
      else
          authenticate_user!
      end
  end

  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    # try catch in case order gets deleted that user is using, avoid a crash
    begin
      if !session[:order_id].nil?
        Order.find(session[:order_id])
      else
        Order.new
      end
    rescue => ex
      Order.new
    end
  end

  def ban_new
    redirect_to root_path
  end

end
