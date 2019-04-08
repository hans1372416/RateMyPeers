Rails.application.routes.draw do
  resources :instructors
  resources :students
  resources :welcomes
  resources :ratings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcomes#index"
end
