unless ENV.key?('REDIS_URL')
  redis_config = { url: 'redis://localhost:6379', namespace: 'sidekiq' }

  Sidekiq.configure_server do |config|
    config.redis = redis_config
  end

  Sidekiq.configure_client do |config|
    config.redis = redis_config
  end
end
