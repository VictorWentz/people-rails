Rails.application.routes.draw do



  resource :session, only: [:new, :create, :destroy]

  resources :departaments
  resources :users
  resources :feedbacks
  get "user_feedback_list/:id" => "feedbacks#user_feedback_list", as: "user_feedback_list"

  root "sessions#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
