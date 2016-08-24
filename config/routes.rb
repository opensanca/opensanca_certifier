Rails.application.routes.draw do
  devise_for :users

  resources :events, only: [ :new, :create, :show ] do
    get '/request', action: :solicit
  end

  root to: 'pages#home'
end
