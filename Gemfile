source 'https://rubygems.org'
ruby '2.3.1'

gem 'json'

gem 'rails', '4.2.6'
gem 'sqlite3'
gem 'sidekiq', '~> 4.1.1'
gem 'sinatra', require: nil
gem 'redis'
gem 'redis-namespace'
gem 'faraday'
gem 'faraday_middleware'
gem 'foreman'
gem 'pg'
gem 'crono'

group :production do
  gem 'unicorn'
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rspec-example_steps'
  gem 'vcr'
  gem 'webmock'
end

group :development, :test do
  gem 'byebug'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'spring'
  gem 'forgery'
  gem 'rubocop', '~> 0.36', require: false
  gem 'rubocop-rspec'
end
