require File.expand_path('../boot', __FILE__)

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)

ActiveSupport.halt_callback_chains_on_return_false = false

module Planeray
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib')
    config.active_job.queue_adapter = :sidekiq
    config.autoload_paths << Rails.root + 'lib'
    config.eager_load_paths << Rails.root + 'lib'

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
