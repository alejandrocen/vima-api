# frozen_string_literal: true

module V1
  module Configs
    class Finder
      include VimaMarketplace::Deps[repository: 'config_repository_rpc']

      def call(params = {})
        config_id = params[:id]
        config = @repository.find(config_id)
        raise VimaMarketplace::Errors::ConfigNotFound, config_id unless config

        config
      end
    end
  end
end
