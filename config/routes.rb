Rails.application.routes.draw do
  devise_for :users
  resources :entities, only: [:new, :create] 
  resources :groups, only: [:index, :show, :new, :create] 
  resources :users

  root "application#index"
end
