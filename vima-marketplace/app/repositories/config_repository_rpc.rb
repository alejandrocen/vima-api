# frozen_string_literal: true

class ConfigRepositoryRpc
  include ConfigRepository

  def initialize
    @client = Gruf::Client.new(service: Vima::Configs)
  end

  def find(id)
    @client.call(:Find, id: id).message
  rescue Gruf::Client::Error
    # TODO: Handle errors
    nil
  end

  def search
    @client.call(:Search).message
  end
end
