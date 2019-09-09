Rails.application.routes.draw do
  resources :entries
  resources :pictures
  resources :diaries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
