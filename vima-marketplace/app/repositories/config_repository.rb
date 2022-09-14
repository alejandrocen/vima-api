# frozen_string_literal: true

require 'vima_common/interface'

module ConfigRepository
  extend VimaCommon::Interface

  method :find
  method :search
  method :save
end
