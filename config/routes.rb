Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :jobs
  resources :boats
  resources :boat_jobs
  
  root 'home#index'
end
