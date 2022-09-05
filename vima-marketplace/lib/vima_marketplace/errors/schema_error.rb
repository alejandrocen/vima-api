# frozen_string_literal: true

module VimaMarketplace
  module Errors
    class SchemaError < VimaMarketplace::Error
      def initialize(message)
        super(message.text)
        @source = message.path.join('.')
      end

      def app_code
        'schema_error'
      end

      attr_reader :source

      def http_code
        422
      end
    end
  end
end
