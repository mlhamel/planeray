source 'https://rubygems.org'
ruby '2.3.1'

gem 'crono'
gem 'faraday_middleware'
gem 'faraday'
gem 'foreman'
gem 'json'
gem 'pg'
gem 'rails', '~> 5.0'
gem 'redis-namespace'
gem 'redis'
gem 'sidekiq',
    git: 'https://github.com/mperham/sidekiq.git',
    ref: '0168d42ba72268341565d03eb96b6bfd594d8bc1'
gem 'sinatra', require: nil
gem 'tzinfo-data'

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
