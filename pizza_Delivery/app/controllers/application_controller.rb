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

  around_action :set_current_user
  def set_current_user
      Current.user = current_user
  yield
  ensure
      # to address the thread variable leak issues in Puma/Thin webserver
      Current.user = nil
  end

  def current_order
    # try catch in case order gets deleted that user is using, avoid a crash
  begin
      if Order.exists?(order_status_id: [1], userId: [Current.user.id])
        Order.where(order_status_id: [1], userId: [Current.user.id]).first
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
