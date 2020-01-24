
require 'httparty'

require_relative "natural_hazards/version"
require_relative "natural_hazards/cli"
require_relative "natural_hazards/api"
require_relative "natural_hazards/event"

module NaturalHazards
  class Error < StandardError; end
  # Your code goes here...
end
