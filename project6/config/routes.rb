Rails.application.routes.draw do
  resources :ratings
  resources :courses
  resources :groups
  resources :memberships
  devise_for :users
  get 'instructorsessions/new'
  get 'studentsessions/new'
  resources :welcomes
 
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
