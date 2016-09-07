Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  namespace :admin do
    resources :events
  end

  resources :events do
    get '/request', action: :solicit
  end

  root to: 'pages#home'
end
