Rails.application.routes.draw do
  devise_for :users
  get 'instructorsessions/new'
  get 'studentsessions/new'
  resources :word_responses
  resources :instructors
  resources :students
  resources :welcomes
  resources :ratings
  resources :groups
 
  root 'welcomes#index'

  get  '/signup', to: 'welcomes#signup'
  get  '/login', to: 'welcomes#login'
  get  '/student_signup', to: 'students#new'
  get  '/instructor_signup', to: 'instructors#new'
  get  '/student_login', to: 'studentsessions#new'
  post '/student_login', to: 'studentsessions#create'
  delete '/student_logout', to: 'studentsessions#destroy'
  get  '/instructor_login', to: 'instructorsessions#new'
  post '/instructor_login', to: 'instructorsessions#create'
  delete '/instructor_logout', to: 'instructorsessions#destroy'
end
