Rails.application.routes.draw do
  resources :categories
  resources :classifieds do
    resources :images, :only =>[:create, :destroy]
  end

  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
    resources :classifieds, only: [:show, :index]

  end

  resources :movies
  resources :directors

  get :search, controller: :classifieds
  root to: 'classifieds#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
end
