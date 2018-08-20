Rails.application.routes.draw do

  get "events/index/:location/:date", to: "events#index", as: :events

  resources :events, only: [:new, :create, :edit, :update, :destroy, :show] do
    resources :requests, only: [:create, :destroy, :update]
  end

  resources :users, except: [:destroy, :index]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
