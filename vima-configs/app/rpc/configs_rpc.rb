# frozen_string_literal: true

require 'vima_services_pb'

class ConfigsRpc < ApplicationRpc
  include VimaConfigs::Deps[repository: 'config_repository_pg']

  bind Vima::Configs::Service

  def search
    configs = @repository.search
    Vima::ConfigSearchResponse.new(configs: configs)
  end

  def find
    id = request.message.id
    config = @repository.find(id)
    fail!(:not_found, :config_not_found, 'Not found') unless config
    Vima::ConfigObject.new(config)
  end
end
