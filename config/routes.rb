Rails.application.routes.draw do
  root "profiles#index"
  
  get 'toggle_dark_mode', to: 'application#toggle_dark_mode'

  devise_for :users

  resources :users

  resources :file_uploads

  resources :profiles

end
