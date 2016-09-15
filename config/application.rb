require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Planeray
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib')
    config.active_job.queue_adapter = :sidekiq

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
