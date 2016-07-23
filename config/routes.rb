Rails.application.routes.draw do
  get 'events/new'

  devise_for :users

  resources :events, only: [ :new, :create, :show ]
  root to: 'pages#home'
end
