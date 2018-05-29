Rails.application.routes.draw do
  root to: 'feeds#index'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  resources :catches, only: [:index, :show, :new, :create, :update, :edit, :destroy] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :friends, only: [:index, :destroy]
  resources :friend_requests, only: [:index, :create, :update, :destroy]
  resources :users, only: [:show]
end
