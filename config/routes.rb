require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  patch '/users/finish', to: 'users#finish', as: 'finish_user_signup'

  namespace :admin do
    resources :events
  end

  resources :events do
    get '/request', action: :solicit
  end

  root to: 'pages#home'
end
