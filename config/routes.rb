Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  post "ask", to: "pages#ask"

  resources :restaurants, only: [:index, :show] do
  resources :conversations, only: :create
  end

  resources :conversations, only: [:index, :show, :create, :destroy] do
  resources :messages, only: :create
  end
end
