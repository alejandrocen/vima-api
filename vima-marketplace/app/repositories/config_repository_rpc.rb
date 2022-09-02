# frozen_string_literal: true

class ConfigRepositoryRpc
  def initialize
    @client = Gruf::Client.new(service: Vima::Configs)
  end

  def find(id)
    response = @client.call(:Find, id: id)
    response.message
  end
end
