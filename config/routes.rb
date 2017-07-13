Rails.application.routes.draw do
  resources :states
  root to: 'events#index'

  require 'sidekiq/web'
  mount Sidekiq::Web, at: '/sidekiq'
end
