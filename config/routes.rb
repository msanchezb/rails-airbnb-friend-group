Rails.application.routes.draw do

  devise_for :users
  get "events/index", to: "events#index"#, as: :events_index
  # route to go from home to index
  post "events/index", to: "events#index"

  resources :events, only: [:new, :create, :edit, :update, :destroy, :show] do
    resources :requests, only: [:create, :update]
  end

  resources :requests, only: :destroy
  resources :users, except: [:destroy, :index]
  get "requests/:id/accept/", to: "requests#accept_request", as: "accept_request"
  get "requests/:id/reject/", to: "requests#reject_request", as: "reject_request"

  post "/users/:id/reload", to: "requests#reload", as: "requests_reload"
  post "/users/:id/badge", to: "users#badge", as: "badge_update"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
