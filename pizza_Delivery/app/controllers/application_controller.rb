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

end
