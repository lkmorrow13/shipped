Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:index, :show]
  resources :jobs
  resources :boats
  resources :boat_jobs

  root 'boats#index'
end
