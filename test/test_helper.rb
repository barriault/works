ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'minitest/spec'
require 'capybara_minitest_spec'

Cell::Testing.capybara = true

class ActiveSupport::TestCase
  fixtures :all
end

class Minitest::Spec
  include Cell::Testing

  before do

  end
end
