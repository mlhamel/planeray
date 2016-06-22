Rails.application.routes.draw do
  root 'events#index'

  require 'sidekiq/web'
  mount Sidekiq::Web, at: '/sidekiq'
end
