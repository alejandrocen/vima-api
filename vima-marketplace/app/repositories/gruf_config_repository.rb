# frozen_string_literal: true

require 'vima_services_pb'

class GrufConfigRepository
  include ConfigRepository

  def initialize
    @client = Gruf::Client.new(service: Vima::Configs)
  end

  def find(id)
    @client.call(:Find, id: id).message
  end

  def search
    @client.call(:Search).message
  end

  def save; end
end
