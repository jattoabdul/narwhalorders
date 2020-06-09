ENV['RAILS_ENV'] ||= 'test'

require 'spec_helper'
require File.expand_path('../config/environment', __dir__)

# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

# Checks for pending migrations and applies them before tests are run.
# If you are not using ActiveRecord, you can remove these lines.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.include Rails.application.routes.url_helpers

  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
  end

  config.before(:suite) do
    # prep factory_run tracking
    FactoryBot::Analytics.track_factories

    # Rails seed?
    Rails.application.load_seed

    # Clear cache
    Rails.cache.clear
  end

  config.after(:suite) do
    # Clear cache
    Rails.cache.clear

    FactoryBot::Analytics.print_statistics
  end

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
end
