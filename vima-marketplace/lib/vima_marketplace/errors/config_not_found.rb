# frozen_string_literal: true

module VimaMarketplace
  module Errors
    class ConfigNotFound < VimaMarketplace::Error
      def initialize(config_id)
        super("The config #{config_id} has not been found")
      end

      def app_code
        'config_not_found'
      end

      def http_code
        404
      end
    end
  end
end
