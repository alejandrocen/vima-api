# frozen_string_literal: true

module V1
  class ConfigsController < ApplicationController
    schema(:show) do
      required(:id).value(:string)
    end

    def show
      @config = resolve('v1.configs.show').call(safe_params.to_h)
    end

    private

    def exceptions
      [VimaMarketplace::Errors::ConfigNotFound].freeze
    end
  end
end
