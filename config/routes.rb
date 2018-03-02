Rails.application.routes.draw do
  get 'boat_jobs/index'
  get 'boat_jobs/new'
  get 'boat_jobs/edit'
  get 'boat_jobs/update'
  get 'boat_jobs/create'
  get 'boat_jobs/show'
  get 'boat_jobs/destroy'
  get 'jobs/index'
  get 'jobs/new'
  get 'jobs/edit'
  get 'jobs/update'
  get 'jobs/create'
  get 'jobs/show'
  get 'jobs/destroy'
  get 'boats/index'
  get 'boats/new'
  get 'boats/edit'
  get 'boats/update'
  get 'boats/create'
  get 'boats/show'
  get 'boats/destroy'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
