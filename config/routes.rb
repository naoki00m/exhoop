Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "videos#index"
  resources :users, only: [:edit, :update, :show]
  resources :videos do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :update, :destroy]
    collection do
      get 'search'
    end
  end
end