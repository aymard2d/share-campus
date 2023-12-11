Rails.application.routes.draw do
  get 'user_events/create'
  get 'events/new'
  get 'events/index'
  get 'events/create'
  get 'events/update'
  get 'events/delete'
  get 'friendships/new'
  get 'friendships/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :courses do
    resources :likes, only: %i[create]
  end
  # Defines the root path route ("/")
  resources :users, only: [:show, :index]
  resources :dashboards, only: [:show, :index]
  # root "posts#index"
  resources :courses, only: [:index, :create, :show]
  resources :libraries, only: :show do
    resources :messages, only: :create
  end

  #routes des évènements
  resources :events, only: [:index, :show] do
    resources :user_events, only: :create
  end
end
