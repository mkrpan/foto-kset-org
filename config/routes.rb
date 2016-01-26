Rails.application.routes.draw do
  devise_for :users
  root to: 'landing#index'
  resources :applications, only: [:create]

  namespace :admin do
    root to: 'seasons#index'
    resources :applications
    resources :seasons
  end
end
