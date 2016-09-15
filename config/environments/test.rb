require 'sidekiq/testing'

Rails.application.configure do
  config.use_dump1090_simulator = true

  config.cache_classes = true
  config.eager_load = false
  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false
  config.action_dispatch.show_exceptions = false
  config.action_controller.allow_forgery_protection = false
  config.action_mailer.delivery_method = :test
  config.active_support.test_order = :random
  config.active_support.deprecation = :stderr

  config.log_level = :warn
  Sidekiq::Logging.logger = nil
end
