Rails.application.routes.draw do
  resources :evaluations
  resources :ratings
  resources :courses
  resources :groups
  resources :memberships
  resources :welcomes
 
  devise_for :users
  root 'welcomes#index'

  get  '/signup', to: 'welcomes#signup'
  get  '/login', to: 'welcomes#login'
  get 'welcomes/confirmation'
end
