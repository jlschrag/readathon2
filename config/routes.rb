Readathon2::Application.routes.draw do
  root 'pages#index'
  resources :students, only: [:index, :new, :create, :show, :edit, :update]
end