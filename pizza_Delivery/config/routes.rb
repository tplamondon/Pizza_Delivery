Rails.application.routes.draw do


  devise_for :drivers
  get 'order_status/index'
  get 'order_status/inProgress'
  get 'order_status/placed'
  get 'order_status/shipped'
  get 'order_status/completed'
  get 'order_status/cancelled'
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'carts/payment'
  get 'products/index'
  get 'pizza_canada/menu'
  get 'pizza_canada/home'
  get 'pizza_canada/info'
  get 'home/about'
  get 'home/index'
  get 'home/regis'
  get 'home/locate'

  # doesn't work for some reason???
  # here maybe? https://stackoverflow.com/questions/19057217/uninitialized-constant-sessionscontroller-in-api/19058081
  # ignore!

  # don't forget the comma's
  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_for :restaurants, path: 'restaurants', controllers: {
    sessions: 'restaurants/sessions',
    registrations: 'restaurants/registrations'
  }

  # NEEDS TO BE BELOW THE DEVISE_FOR STUFF
  # https://stackoverflow.com/questions/7086583/creating-a-users-show-page-using-devise
  #get 'restaurants/index'
  #get 'restaurants/show'
  resources :restaurants, :only => [:show, :index, :new]
  # https://stackoverflow.com/questions/24875403/only-allow-admin-user-to-create-new-users-in-rails-with-devise-no-external-modu
  post 'create_restaurant' => 'restaurants#create', as: :create_restaurant
  resources :orders, :only => [:show, :destroy, :update, :edit]

  #https://richonrails.com/articles/building-a-shopping-cart-in-ruby-on-rails
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
