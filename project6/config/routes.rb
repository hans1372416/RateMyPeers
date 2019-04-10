Rails.application.routes.draw do
  resources :word_responses
  resources :instructors
  resources :students
  resources :welcomes
  resources :ratings
  resources :groups
 
  root 'welcomes#index'

  get '/student_signup', to: 'students#new'
  get '/instructor_signup', to: 'instructors#new'
  
end
