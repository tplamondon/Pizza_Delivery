Rails.application.routes.draw do


  get 'pizza_canada/menu'
  get 'pizza_canada/home'
  get 'pizza_canada/info'
  get 'home/about'
  get 'home/index'

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
  resources :restaurants,  :only => [:show, :index]

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
