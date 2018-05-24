Rails.application.routes.draw do
  resources :friends, only: [:index, :destroy]
  resources :friend_requests, only: [:index, :create, :update, :destroy]
  root to: 'catches#index'
  devise_for :users
  resources :catches, only: [:show, :new, :create, :update, :edit, :destroy] do
    resources :reviews, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
