ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require 'database_cleaner/active_record'

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors, with: :threads)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # DatabaseCleaner setup
      setup do
        DatabaseCleaner.strategy = :transaction
        DatabaseCleaner.start
      end

      teardown do
        DatabaseCleaner.clean
    end

    # helper methods to be used by all tests here.
    #
    # Use this method to simulate user sign in for controller/integration tests.
# Add this to test/test_helper.rb

 # Add or update in test/test_helper.rb

# Add or update in test/test_helper.rb

module AuthenticationHelper
  def sign_in_as(user)
    # Using the sign_in path from routes
    post sign_in_path, params: {
      email_address: user.email_address,
      password: 'password'
    }

    # Verify the session user_id
    assert session[:user_id].present?, "Failed to authenticate: user_id not in session"
  end
end

class ActionDispatch::IntegrationTest
  include AuthenticationHelper
end
  end
end
