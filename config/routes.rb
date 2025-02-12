Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :passwords, param: :token

  # Session routes for sign in
  get 'sign_in', to: 'sessions#new', as: 'sign_in'    # sign-in page
  post 'sign_in', to: 'sessions#create'                 # sign-in action
  delete 'sign_out', to: 'sessions#destroy', as: 'sign_out'  # sign-out action

  # Sign-up routes
  get "sign_up", to: "users#new", as: :sign_up
  post "users", to: "users#create"

  resources :books, only: [:index, :show]
  resources :borrowings, only: [:create, :destroy]

  get "home/user"
  root "home#index"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
