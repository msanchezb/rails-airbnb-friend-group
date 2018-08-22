Rails.application.routes.draw do

  devise_for :users
  get "events/index/:location/:date", to: "events#index" #, as: :events
  # route to go from home to index
  post "events/index", to: "events#index"

  resources :events, only: [:new, :create, :edit, :update, :destroy, :show] do
    resources :requests, only: [:create, :update]
  end

  resources :requests, only: :destroy
  resources :users, except: [:destroy, :index]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
