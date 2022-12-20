Rails.application.routes.draw do
  root "profiles#index"
  

  devise_for :users

  resources :users

  resources :profiles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
