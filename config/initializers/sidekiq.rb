unless ENV.key?('REDIS_URL')
  redis_url = { url: 'redis://localhost:6379' }

  Sidekiq.configure_server { |config| config.redis = redis_url }
  Sidekiq.configure_client { |config| config.redis = redis_url }
end
