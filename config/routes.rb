Rails.application.routes.draw do
  devise_for :users
  resources :entities
  resources :groups, only: [:index, :show, :new, :create, :destroy] 
  resources :expenses
  resources :users

  root "application#index"
end
