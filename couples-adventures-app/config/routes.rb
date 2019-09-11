Rails.application.routes.draw do
  resources :login, only: [:new, :create]
  resources :users, except: :index
  resources :diaries
  resources :albums
  resources :pictures
  resources :entries
  

  get '/diaries/:id/entries', to: 'diaries#diary_entries', as: 'diary_entries'
  post '/pictures/new_entry_picture', to: 'pictures#new_entry_picture', as: 'new_entry_picture'

  delete '/logout', to: 'login#destroy', as: 'logout'

  root "login#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
