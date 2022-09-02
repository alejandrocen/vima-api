# frozen_string_literal: true

class ConfigsRpc < ApplicationRpc
  bind Vima::Configs::Service

  def index
    Vima::ConfigIndexResponse.new(configs: [])
  end
end
