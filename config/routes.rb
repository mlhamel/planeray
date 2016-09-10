Rails.application.routes.draw do
  root to: 'events#index'

  require 'sidekiq/web'
  mount Sidekiq::Web, at: '/sidekiq'
end
