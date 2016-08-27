Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :events
  end

  resources :events do
    get '/request', action: :solicit
  end

  root to: 'pages#home'
end
