Rails.application.routes.draw do
  resources :login, only: [:new, :create]
  resources :users, only: [:show, :new, :create, :destroy]
  resources :diaries
  resources :albums
  resources :pictures
  resources :entries
  

  get '/diaries/:id/entries', to: 'diaries#diary_entries', as: 'diary_entries'
  post '/pictures/new_entry_picture', to: 'pictures#new_entry_picture', as: 'new_entry_picture'

  get '/home', to: 'static#home', as: 'home_static'

  delete '/logout', to: 'login#destroy', as: 'logout'

  root 'static#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
