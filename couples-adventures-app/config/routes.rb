Rails.application.routes.draw do
  resources :entries
  resources :pictures
  resources :diaries

  get '/diaries/:id/entries', to: 'diaries#diary_entries', as: 'diary_entries'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
