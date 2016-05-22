ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)

require 'rspec/rails'
require 'vcr_helper'
require 'webmock/rspec'

require 'sidekiq/testing'
Sidekiq::Testing.fake!

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.global_fixtures = :all
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!
  config.order = :random
  Kernel.srand config.seed

  RSpec::Matchers.define_negated_matcher :raise_no_errors, :raise_error

  config.before(:each) do
    Sidekiq::Worker.clear_all
  end
end
