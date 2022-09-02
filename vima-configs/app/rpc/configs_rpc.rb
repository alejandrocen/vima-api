# frozen_string_literal: true

class ConfigsRpc < ApplicationRpc
  include VimaConfigs::Deps[repository: 'config_repository_pg']

  bind Vima::Configs::Service

  def index
    configs = @repository.search
    Vima::ConfigIndexResponse.new(configs: configs)
  end
end
