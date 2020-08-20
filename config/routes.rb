Rails.application.routes.draw do
  resources :songs
  resources :artists
  resources :favorites
  resources :users

  get '/tracks/:id', to: 'songs#showed'
  delete '/tracks/:id', to: 'songs#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
