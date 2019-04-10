Rails.application.routes.draw do
  resources :word_responses
  resources :instructors
  resources :students
  resources :welcomes
  resources :ratings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcomes#index"

  get '/student_signup', to: 'students#new'
  get '/instructor_signup', to: 'instructors#new'
end
