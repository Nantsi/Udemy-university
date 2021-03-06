Rails.application.routes.draw do

  root 'courses#index'
  get 'pages/about'
  get 'courses/new', to: 'courses#new'
  resources :students
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'course_enroll', to: 'student_courses#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
