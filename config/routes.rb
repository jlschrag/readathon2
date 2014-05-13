Readathon2::Application.routes.draw do
  root 'pages#index'
  resources :students
  resources :teachers, only: [:index, :new, :show]
end