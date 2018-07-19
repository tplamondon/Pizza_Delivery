Rails.application.routes.draw do


  get 'home/index'


  devise_for :users
  devise_for :restaurants

  # doesn't work for some reason???
  # here maybe? https://stackoverflow.com/questions/19057217/uninitialized-constant-sessionscontroller-in-api/19058081
  #devise_for :users, path: 'users', controllers: {
  #  sessions: 'users/sesssions'
  #}
  #devise_for :restaurants, path: 'restaurants', controllers: {
  #  sessions: 'restaurants/sesssions'
  #}

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
