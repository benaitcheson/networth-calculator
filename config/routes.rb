Rails.application.routes.draw do
  root 'users#index'

  # users
  resources :users, only: %i[index show new create edit update]

  # assets
  resources :user_assets, only: %i[index show new create edit update destroy]
end
