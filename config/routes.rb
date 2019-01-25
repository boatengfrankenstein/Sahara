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
  resources :user_profile

  get :search, controller: :classifieds
  root to: 'classifieds#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }

  # Avatar routes
  get "avatar/:size/:background/:text" => Dragonfly.app.endpoint { |params, app|
  app.generate(:initial_avatar, URI.unescape(params[:text]), { size: params[:size], background_color: params[:background] })
  }, as: :avatar
  
end
