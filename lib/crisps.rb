require "crisps/version"
require 'rspec/core/formatters/base_text_formatter'

module RSpec
  module Formatter
    module Crisps < RSpec::Core::Formatters::BaseTextFormatter

      RSpec::Core::Formatters.register(self, :example_passed, :example_failed)

      def example_passed(example)
        output.print ("chocolate covered crisps - yum!").colorize(:background => :green)
      end

      def example_failed(example)
        p "burnt toast - boo!"
      end
    end
  end
end