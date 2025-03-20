Rails.application.routes.draw do
  get "users/index"
  get "users/show"
  get "dog_breeds/index"
  get "dog_breeds/show"
  
  root "pages#about"  # Default homepage
  get "about", to: "pages#about"

  #root "dog_breeds#index"
  resources :dog_breeds, only: [:index, :show]
  resources :users, only: [:index, :show]
  
  get "pages/about"
  get "breeds/index"
  get "breeds/show"
  resources :breeds, only: [ :index, :show ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
