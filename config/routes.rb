Rails.application.routes.draw do
  root to: 'catches#index'
  devise_for :users
  resources :catches, only: [:show, :new, :create, :update, :edit] do
    resources :reviews, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
