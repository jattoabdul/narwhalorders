# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# CORE
gem 'shopify_app'

# OTHER CORE
gem 'bootsnap', '>= 1.4.2', require: false # Reduces boot times through caching.
gem 'puma', '~> 4.3' # Use Puma as the app server
gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'turbolinks', '~> 5'

# RUBY HACKING
gem 'active_hash', '~> 2.3'
gem 'concurrent-ruby', '~> 1.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# DATA
gem 'pg', '>= 0.18', '< 2.0'

# CLIENT
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets
gem 'webpacker', '~> 4.0' # Transpile app-like JavaScript.

# USER

# JSON, API SEC
gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease.
gem 'oj', '~> 3.9'

# STATEMACHINE

# API REQUESTS
gem 'http', '~> 4.1'
gem 'rest-client', '~> 2.0'

# EXTERNAL SERVICES

# PRODUCTION/STAGING

# JOB SERVER
gem 'hiredis', '~> 0.6'
gem 'redis', '~> 4.1'
gem 'redis-rails', '~> 5.0'
gem 'sidekiq', '~> 5.2'
gem 'sidekiq-scheduler', '~> 3.0'

# MIDDLEWARE
gem 'rack-attack', '~> 6.1' # handles blocking & throttling
gem 'rack-cors', '~> 1.1' # handles Cross-Origin Resource Sharing
gem 'rack-heartbeat', '~> 1.1' # simple uptime checker
gem 'rack-timeout', '~> 0.5' # abort requests that are taking too long

# REPORTING & MONITORING
gem 'puma_worker_killer', '~> 0.1.1'

# FILE HANDING

# DEVELOPMENT
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', platforms: [:mri]
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0' # Access an interactive console on exception
end

# TESTING
group :test, :development do
  gem 'capybara'
  gem 'dotenv-rails'
  gem 'factory_bot_rails', require: false
  gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
  gem 'rspec-rails', '~> 3.8'
  gem 'rubocop', '~> 0.58', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'fuubar', '~> 2.5'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers'
  gem 'simplecov', '~> 0.17.0', require: false
  gem 'terminal-table'
  gem 'timecop'
  gem 'webmock'
end

# DEBUG/PRY
group :test, :development do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
end
