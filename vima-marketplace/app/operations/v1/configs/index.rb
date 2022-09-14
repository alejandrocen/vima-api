# frozen_string_literal: true

module V1
  module Configs
    class Index
      include VimaMarketplace::Deps[repository: 'gruf_config_repository']

      def call
        result = @repository.search
        result.configs
      end
    end
  end
end
