Rails.application.routes.draw do
  devise_for :users
  root "videos#index"
  resources :users, only: [:edit, :update, :show]
  resources :videos do
    resources :likes, only: [:create, :destroy]
  end
end