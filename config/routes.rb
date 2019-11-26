Rails.application.routes.draw do
  devise_for :users
  get 'followers', to: "users#followers"
  root 'places#index'
  resources :places do
    resources :comments, only: :create
    resources :photos, only: :create
  end
  resources :users, only: :show
 end


