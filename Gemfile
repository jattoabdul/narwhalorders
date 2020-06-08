source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'


# CORE
gem 'shopify_app'
gem 'activeresource', github: 'rails/activeresource'
gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'bootsnap', '>= 1.4.2', require: false # Reduces boot times through caching.
gem 'puma', '~> 4.3' # Use Puma as the app server - 4.1
gem 'turbolinks', '~> 5'

# RUBY HACKING
gem 'active_hash', '~> 2.3'
gem 'concurrent-ruby', '~> 1.1'
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'tzinfo-data' # gem 'tzinfo-data', '~> 1.2019'
gem 'virtus', '~> 1.0'

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

# MIDDLEWARE
gem 'rack-attack', '~> 6.1'
gem 'rack-cors', '~> 1.1'
gem 'rack-heartbeat', '~> 1.1'
gem 'rack-timeout', '~> 0.5'

# REPORTING & MONITORING

# FILE HANDING

# DEVELOPMENT
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', platforms: [:mri]
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0' # Access an interactive console on exception
end

# TESTING
group :test, :development do
  gem 'dotenv-rails', '~> 2.7'
  gem 'rspec-rails'
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

# GUARD / AUTO TEST
group :test, :development do
  gem 'factory_bot_rails', require: false
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
end