Rails.application.routes.draw do
  root "profiles#index"
  
  get 'toggle_dark_mode', to: 'application#toggle_dark_mode'

  get '/users/:id/download_avatar', to: 'users#download_avatar', as: 'download_avatar'

  devise_for :users

  resources :users

  resources :file_uploads

  resources :profiles

end
