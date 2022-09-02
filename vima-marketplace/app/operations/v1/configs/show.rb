# frozen_string_literal: true

module V1
  module Configs
    class Show
      include Dry::Monads[:result, :do]
      include VimaMarketplace::Deps[repository: 'config_repository_rpc']

      def call(params = {})
        config = @repository.find(params[:id])
        Success(config)
      end
    end
  end
end
