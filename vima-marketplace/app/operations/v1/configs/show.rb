# frozen_string_literal: true

module V1
  module Configs
    class Show
      include VimaMarketplace::Deps[repository: 'gruf_config_repository']

      def call(params = {})
        config_id = params[:id]
        result = @repository.find(config_id)
        config = result.config
        raise VimaMarketplace::Errors::ConfigNotFound, config_id unless config

        config
      end
    end
  end
end
