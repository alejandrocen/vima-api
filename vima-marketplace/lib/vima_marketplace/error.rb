# frozen_string_literal: true

module VimaMarketplace
  class Error < StandardError
    def app_code
      'unknown'
    end

    def source
      'domain'
    end

    def http_code
      400
    end
  end
end
