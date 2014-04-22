Readathon2::Application.routes.draw do
  root 'pages#index'
  resources :students
end