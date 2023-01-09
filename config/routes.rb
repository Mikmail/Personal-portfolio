Rails.application.routes.draw do
  root "profiles#index"
  
  post '/set_theme', to: 'application#set_theme'

  get '/users/:id/download_avatar', to: 'users#download_avatar', as: 'download_avatar'

  devise_for :users

  resources :users

  resources :file_upload

  resources :profiles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
