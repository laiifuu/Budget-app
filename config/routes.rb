Rails.application.routes.draw do
  devise_for :users
  resources :entities, only: [:index, :show, :new, :create] 
  resources :groups, only: [:index, :show, :new, :create] 
  resources :expenses
  resources :users

  root "application#index"
end
