# Set Rails environment
# ==================================================================
ENV['RAILS_ENV'] ||= 'test'

# Set up Simple coverage reports for unit tests
# ==================================================================
require 'simplecov'
SimpleCov.start 'rails'

# Call in Rails magic
# ==================================================================
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# Add Minitest extensions for nicer feedback on tests
# ==================================================================
require 'minitest/reporters'
Minitest::Reporters.use!

# Set up our Test helpers
# ==================================================================
module ActiveSupport
  class TestCase
    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
