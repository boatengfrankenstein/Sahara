Rails.application.routes.draw do
  resources :categories
  resources :classifieds
  resources :movies
  resources :directors

  get :search, controller: :classifieds
  root to: 'classifieds#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
end
