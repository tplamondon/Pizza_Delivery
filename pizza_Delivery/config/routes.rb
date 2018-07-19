Rails.application.routes.draw do


  get 'home/index'

  #get 'restaurants/index'
  #get 'restaurants/show'
  resources :restaurants






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

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
