require "yeast/version"

require "better_errors"
require "binding_of_caller"

module BetterErrors
  # @private
  class ErrorPage
    def self.template_path(template_name)
      File.expand_path("../yeast/templates/#{template_name}.erb", __FILE__)
    end
  end
end
