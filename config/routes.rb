Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/destroy'
  get 'amphis/index'
  get 'amphis/show'
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

  #courses routes
  resources :courses , only: [:index, :create, :show] do
    resources :likes, only: %i[create]
    resources :reviews, only: %i[create]
  end

  #dashboards routes
  resources :dashboards, only: [:show, :index]

  #libraries routes
  resources :libraries, only: :show do
    resources :messages, only: :create
  end

  #events routes
  resources :events, only: [:index, :show, :create] do
    resources :user_events, only: :create
  end

  #users routes
  resources :users, only: [:show, :index] do
    resources :friendships
  end

  #friendships routes
  resources :friendships, only: [:create, :destroy] do
    member do
      patch :accept
      patch :decline
    end
    resource :dashboards, only: %i[show]
  end

  #amphis routes
  resources :amphis, only: [:index, :show]

  #reviews routes
  resources :reviews, only: :destroy
end


