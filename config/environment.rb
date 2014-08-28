# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Rails.logger = ActiveSupport::TaggedLogging.new(Logger.new(STDOUT))
Rails.logger.level = 0
