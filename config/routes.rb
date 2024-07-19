Rails.application.routes.draw do



  resource :session, only: [:new, :create, :destroy]

  resources :departaments
  resources :users
  resources :feedbacks

  root "sessions#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
