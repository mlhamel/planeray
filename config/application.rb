require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Planeray
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    config.autoload_paths += [
      Rails.root + 'lib'
    ]

    config.eager_load_paths << Rails.root + 'lib'
    config.active_job.queue_adapter = :sidekiq
  end
end
